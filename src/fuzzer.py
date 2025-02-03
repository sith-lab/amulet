"""
File: Fuzzing Orchestration

Copyright (C) Microsoft Corporation
SPDX-License-Identifier: MIT
"""
import shutil
from pathlib import Path
from datetime import datetime
from typing import Optional, List, Dict, Tuple
from copy import copy
from glob import glob

from interfaces import CTrace, HTrace, Input, InputTaint, EquivalenceClass, TestCase, Generator, \
    InputGenerator, Model, Executor, Analyser, Coverage, InputID
from generator import get_generator
from input_generator import get_input_generator
from model import get_model
from executor import get_executor
from analyser import get_analyser
from coverage import get_coverage
from isa_loader import InstructionSet
from subprocess import run, DEVNULL
import os
import sys
import pickle
import time

from config import CONF
from service import STAT, LOGGER, bit_count, rmtree_if_exists
from ipc_orchestration import hash_input

Multiprimer = Dict[Input, List[Input]]


class Fuzzer:
    instruction_set: InstructionSet
    existing_test_case: str
    existing_input_case: str

    generator: Generator
    input_gen: InputGenerator
    executor: Executor
    model: Model
    analyser: Analyser
    coverage: Coverage
    start_time : datetime

    def __init__(self, instruction_set_spec: str, work_dir: str, existing_test_case: str = "", existing_input_case: str = ""):
        self.existing_test_case = existing_test_case
        self.existing_input_case = existing_input_case
        if existing_test_case:
            CONF._no_generation = True
            CONF.gpr_blocklist = []
            CONF.instruction_blocklist = []
        self.instruction_set = InstructionSet(instruction_set_spec, CONF.supported_categories)
        self.work_dir = work_dir
        self.report_dir = "" # Set in copy_debug_files

    def start(self, num_test_cases: int, num_inputs: int, timeout: int, nonstop: bool = False):
        self.start_time = datetime.today()
        LOGGER.fuzzer_start(num_test_cases, self.start_time)

        # create all main modules
        self.initialize_modules()

        for i in range(num_test_cases):
            LOGGER.fuzzer_start_round(i)
            LOGGER.dbg_report_coverage(i, self.coverage.get_brief())
            # Clean up debug dir from previous run
            if not CONF.debug:
                self.executor.delete_debug_files()

            if CONF.profile: generate_start = time.time()
            # Generate a test case
            test_case_name = f"generated-{CONF.process_run}.asm"
            if not self.existing_test_case:
                test_case = self.generator.create_test_case(test_case_name, i)
            else:
                test_case = self.generator.parse_existing_test_case(self.existing_test_case)
                    
            # Prepare inputs
            if not self.existing_input_case:
                inputs: List[Input] = self.input_gen.generate(CONF.input_gen_seed, num_inputs)
            else:
                inputs: List[Input] = self.input_gen.parse_existing_input(self.existing_input_case)
            if CONF.profile: STAT.generate_time += time.time() - generate_start

            # Fuzz the test case
            violation = self.fuzzing_round(test_case, inputs, i)
            STAT.test_cases += 1

            if violation:
                LOGGER.fuzzer_report_violations(violation, self.model, file=open('{}/{}/result'.format(CONF.debug_dir, CONF.test_case), 'a+'), round=i)
                # self.store_test_case(test_case, False)
                STAT.violations += 1
                if not nonstop:
                    break

            # stop fuzzing after a timeout
            if timeout:
                now = datetime.today()
                if (now - self.start_time).total_seconds() > timeout:
                    LOGGER.fuzzer_timeout()
                    break

            if self.existing_input_case:
                # not much point to fuzzing the same input multiple times.
                break
        LOGGER.fuzzer_finish(violation)
        if len(glob(f'{CONF.debug_dir}/bugs')) != 0:
            #create dir
            now = datetime.today()
            delta = now - self.start_time
            elapsed_hrs = delta.days * 24 + delta.seconds // 3600
            elapsed_mins = (delta.seconds % 3600) // 60
            elapsed_secs = delta.seconds % 60
            elapsed_ms = delta.microseconds
            elapsed_str = f'{elapsed_hrs}hrs-{elapsed_mins}mins-{elapsed_secs}secs'
            bugs_report_dir = CONF.result_dir + "results/" + elapsed_str + "_bugs" # Time elapsed in fuzzer run!
            _bugs_dir = Path(bugs_report_dir)
            _bugs_dir.mkdir(parents = True, exist_ok=True)
            run(["cp","-r", f'{CONF.debug_dir}/bugs', f"{bugs_report_dir}/bugs"])

        # Clean up last run
        # Debug files for each test case are cleaned up above
        if not CONF.debug:
            rmtree_if_exists(CONF.debug_dir)
            rmtree_if_exists(CONF.gem5_checkpoint)
            rmtree_if_exists(CONF.gem5_output_location) # Already done in executor
        if CONF.profile:
            STAT.total_time = (datetime.today() - self.start_time).total_seconds()
            print(STAT.profile())

    # DEBUG: show bits which make up htrace
    def print_htrace_bits(htraces):
        for i, htrace in enumerate(htraces):
            print(i, end=' ')
            bits = []
            bit = 0
            while (1 << bit) <= htrace:
                if htrace & (1 << bit):
                    bits.append(bit)
                bit += 1
            print(bits)
    
    def fuzzing_round(self, test_case: TestCase, inputs: List[Input], round) -> Optional[EquivalenceClass]:
        self.model.load_test_case(test_case)
        self.executor.load_test_case(test_case)
        self.coverage.load_test_case(test_case)

        # by default, we test without nested misprediction,
        # but retry with nesting upon a violation
        violations: List[EquivalenceClass] = []
        boosted_inputs: List[Input] = []
        for nesting in [1, CONF.model_max_nesting]:
            if self.existing_input_case:
                boosted_inputs = copy(inputs) # Don't boost the inputs we are trying to test against!
            else:
                if CONF.profile: boost_start = time.time()
                boosted_inputs = self.boost_inputs(inputs, nesting)
                if CONF.profile: STAT.generate_time += time.time() - boost_start
            STAT.num_inputs += len(boosted_inputs)

            # Dump inputs; Better debugging if done first!
            if CONF.debug:
                self.input_dump(boosted_inputs, round)
            # print(f"len(inputs[0]): {len(inputs[0])}, len(boosted_inputs[0]): {len(boosted_inputs[0])}")

            # Get traces
            if CONF.profile: ctrace_start = time.time()
            ctraces: List[CTrace] = self.model.trace_test_case(boosted_inputs, nesting, round)
            if CONF.profile: STAT.ctrace_time += time.time() - ctrace_start
            htraces: List[HTrace] = self.executor.trace_test_case(boosted_inputs, round)
            # self.print_htrace_bits(htraces)
            
            if (self.executor.bugged):
                print(f"Buggy test case detected for process {CONF.process_run}!")
                return None
                
            # print(len(set(ctraces)), 'unique ctraces')
            if CONF.measure_uarch_diversity:
                directory = f'{CONF.result_dir}/results'
                Path(directory).mkdir(parents = True, exist_ok = True)
                filename = f'{directory}/uarch_diversity{CONF.process_run}.txt'
                if round == 0:
                    with open(filename, 'w') as f:
                        f.write(f'# Microarchitectural state diversity for Revizor run {sys.argv}\n')
                        f.write(f'# Each line below has the number of unique hardware traces (i.e. cache states) for a particular test case\n')
                with open(filename, 'a') as f:
                    f.write(f'{len(set(htraces))}\n')
            if CONF.verbose:
                print('inputs:', [i for i in boosted_inputs])
                print('ctraces:', ctraces)
                print('htraces:', [hex(value)[2:] for value in htraces])
            LOGGER.trc_fuzzer_dump_traces(htraces, ctraces)

            if self.existing_input_case and self.existing_test_case:
                assert(CONF.test_case) # Non-empty
                LOGGER.waring("fuzzer::fuzzing_round", "Single Run: Existing test input and test program")
                if (not CONF.analysis_run):
                    # Don't copy over files if we are running analysis only!
                    self.copy_debug_files(test_input=boosted_inputs[-1], base_input=boosted_inputs[-1],
                                    ref_input=boosted_inputs[-1],
                                    round=round,test_case=test_case, head_input=True,
                                    single_run=True)
                # No violations will ever be found as we are only running 1 part of a pair!
                # Must grab last input from boosted_inputs as it is the one we are testing against; Prior inputs are primers!
                return None 

            # Check for violations
            violations = self.analyser.filter_violations(boosted_inputs, ctraces, htraces, True)

            # nothing detected? -> we are done here, move to next test case
            if not violations:
                return None
            # if CONF.debug not enabled, we dump inputs only in case of a violation to minimize disk usage
            if not CONF.debug:
                self.input_dump(boosted_inputs, round)
            # sequential contract? -> no point in trying higher nesting
            if 'seq' in CONF.contract_execution_clause:
                break

            # otherwise, try higher nesting
            if nesting == 1:
                LOGGER.fuzzer_nesting_increased()

        if CONF.no_priming:
            for violation in violations:
                # assert len(violation.measurements) == 2
                ref_input = violation.measurements[0].input_
                test_input = violation.measurements[1].input_ # Should always exist!
                self.copy_debug_files(test_input=test_input, base_input=ref_input, ref_input=ref_input, round=round, test_case=test_case, head_input=True)
            return violations[-1]

        # Try priming the inputs that disagree with the other ones within the same eq. class
        STAT.required_priming += 1
        while violations:
            LOGGER.fuzzer_priming(len(violations))
            violation: EquivalenceClass = violations.pop()
            if CONF.profile: prime_start = time.time()
            survives_priming = self.survives_priming(violation, boosted_inputs)
            if CONF.profile: STAT.prime_time += time.time() - prime_start
            
            if survives_priming:
                #exits when it find violation that survived priming
                test_input, ref_input = survives_priming
                self.copy_debug_files(test_input=test_input, base_input=ref_input, ref_input=ref_input, round=round, test_case=test_case, head_input=True)
                return violation
        # all violations were cleaned. all good

        return None

    def initialize_modules(self):
        """ create all main modules """
        self.generator = get_generator(self.instruction_set)
        self.input_gen: InputGenerator = get_input_generator()
        self.executor: Executor = get_executor()
        self.model: Model = get_model(self.executor.read_base_addresses())
        self.analyser: Analyser = get_analyser()
        self.coverage: Coverage = get_coverage(self.instruction_set, self.executor, self.model,
                                               self.analyser)

    def boost_inputs(self, inputs: List[Input], nesting: int) -> List[Input]:
        taints: List[InputTaint]
        taints = self.model.get_taints(inputs, nesting)

        # ensure that we have many inputs in each input classes        
        boosted_inputs: List[Input] = list(inputs)  # make a copy
        for _ in range(CONF.inputs_per_class - 1):
            boosted_inputs += self.input_gen.extend_equivalence_classes(inputs, taints)
        # ### Debug ###
        # for item in boosted_inputs:
        #   with open('output_'+str(item.seed)+'.txt', 'w') as file:
        #       for subitem in item:
        #           file.write(str(subitem) + '\n')
        #   file.close()
        # ### Debug ###
        return boosted_inputs
    
    def input_dump(self, inputs: List[Input], round):
        # Not strictly necessary, but very good for debugging if needed
        # Doing so outside of executor/model as the inputs should be run on both; They are local to revizor, not gem5!
        for input in inputs:
            # LOGGER.dbg_fuzzer(f"input_dump: Pickled input has {len(input)} values. 8 bytes per value")
            # LOGGER.dbg_fuzzer(f"input_dump: input registers are: {input.get_registers()}")
            input_pickle_path = "{}/{}/inputpickle_{}_{}.pkl".format(CONF.debug_dir, CONF.test_case, round, input)
            with open(input_pickle_path, "wb") as picklefile:
                pickle.dump([input.tobytes()], picklefile)
        return


    def survives_priming(self, org_violation: EquivalenceClass, all_inputs: List[Input]) -> Optional[Tuple[Input, Input]]:
        """
        Try priming the inputs that caused the violations

        return: True if the violation survived priming
        """
        violation = copy(org_violation)
        self.executor.start_priming()
        for current_htrace in violation.htrace_map:
            current_input_id = violation.htrace_map[current_htrace][-1].input_id

            # list of inputs that produced a different HTrace
            input_ids_to_test: List[InputID] = [
                m.input_id for m in violation.measurements if m.htrace != current_htrace
            ]

            # insert the tested inputs into their places
            for input_id in input_ids_to_test:
                primer = all_inputs[:current_input_id + 1]
                primer[current_input_id] = all_inputs[input_id]

                # try priming
                htraces: List[HTrace] = self.executor.trace_test_case(primer, -1)
                primed_htrace = htraces[current_input_id]
                if primed_htrace == 0:
                    # buggy test case
                    continue
                if primed_htrace == current_htrace:
                    continue

                self.executor.stop_priming()
                # save exact series of inputs
                with open(f"{CONF.debug_dir}/{CONF.test_case}/inputpickle_primer.pkl", "wb") as picklefile:
                    pickle.dump([input.tobytes() for input in primer], picklefile)
                with open(f"{CONF.debug_dir}/{CONF.test_case}/inputpickle_reference.pkl", "wb") as picklefile:
                    pickle.dump([input.tobytes() for input in all_inputs[:current_input_id + 1]], picklefile)
                return (all_inputs[current_input_id], all_inputs[input_id])
        self.executor.stop_priming()
        return None


    def primer_is_effective(self, test_input: Input, base_input: Input, ref_input: Input,
                            expected_htrace: HTrace, round: int, head_input: bool,test_case : TestCase) -> bool:

        htrace: HTrace = self.executor.trace_priming(test_input, round, head_input)
        if htrace == 0:
            # buggy test case
            return False
        if htrace == expected_htrace:
            return False
        #else - violation was found

        #create debug files of the original input
        self.executor.trace_priming(ref_input, round, head_input)

        #report violation
        LOGGER.fuzzer_report_violation(base_input=base_input, Id=round, ref_input=ref_input, tested_input=test_input, test_case=self.existing_test_case, file=open('{}/{}/result'.format(CONF.debug_dir, CONF.test_case), 'a+'))
        self.copy_debug_files(test_input=test_input, base_input=base_input, ref_input=ref_input, round=round, test_case=test_case, head_input= head_input)
        # htrace and expected_htrace are of the same ctx
        return True


    def build_batch_primer(self, inputs: List[Input], target_input_id: InputID,
                           expected_htrace: HTrace,
                           num_primed_inputs: int) -> Tuple[List[Input], List[InputID]]:
        # the first size to be tested
        primer_size = CONF.min_primer_size % len(inputs) + 1

        while True:
            # print(f"Trying primer {primer_size}")
            # build a set of priming inputs (i.e., multiprimer)
            if primer_size <= target_input_id:
                primer = inputs[target_input_id - primer_size:target_input_id + 1]
            else:
                primer = inputs[target_input_id - primer_size:] + inputs[:target_input_id + 1]
            assert len(primer) == primer_size + 1
            assert primer[-1].seed == inputs[target_input_id].seed

            batch_primer = primer * num_primed_inputs
            # print(target_input_id, primer_size, len(inputs), len(primer))
            primed_ids = list(
                range(primer_size, num_primed_inputs * (primer_size + 1), primer_size + 1))
            # print(primed_ids)

            # check if the hardware trace of the target_id matches
            # the hardware trace received with the primer
            if self.primer_is_effective(batch_primer, primed_ids, expected_htrace):
                return batch_primer, primed_ids

            # if we failed, try a larger primer
            new_size = primer_size * 2

            # if we just wrapped around, try all original preceding inputs as primer
            if new_size > target_input_id and primer_size < target_input_id:
                primer_size = target_input_id
            else:
                primer_size = new_size

            # if a larger primer is allowed, try adding more inputs
            if primer_size > CONF.max_primer_size:
                # otherwise, we failed to find a primer
                LOGGER.waring("fuzzer", "Failed to build a primer - max_primer_size reached")
                return [], []

            # run out of inputs to test?
            if primer_size >= len(inputs):
                LOGGER.waring("fuzzer", "Insufficient inputs to build a primer")
                return [], []

    # Copy results when violation found
    def copy_debug_files(self, test_input: Input, base_input: Input, ref_input: Input, round: int, test_case: TestCase, head_input: bool, single_run: bool = False):

        #create dir
        now = datetime.today()
        delta = now - self.start_time
        elapsed_hrs = delta.days * 24 + delta.seconds // 3600
        elapsed_mins = (delta.seconds % 3600) // 60
        elapsed_secs = delta.seconds % 60
        elapsed_us = delta.microseconds
        elapsed_str = f'{elapsed_hrs}hrs-{elapsed_mins:02}mins-{elapsed_secs:02}secs'
        if single_run:
            self.report_dir = CONF.result_dir + "results/" + CONF.process_run
        else: # Use this when fuzzing normally
            self.report_dir = CONF.result_dir + "results/" + elapsed_str # Time elapsed in fuzzer run!
        while True:
            result_dir = Path(self.report_dir)
            try:
                result_dir.mkdir(parents = True, exist_ok = False)
                break
            except FileExistsError: # seems like mkdir is normally atomic on linux, so this shouldn't be a race condition.
                if self.report_dir.endswith('us'):
                    # multiple violations at same microsecond (very unlikely)
                    self.report_dir += f'_'
                else:
                    self.report_dir += f'-{elapsed_us:06}us'
        self.executor.write_debug_files()

        # Copy files to report dir
        # test_input is input1, ref_input is input2; DO NOT MIX UP!

        # Copy buggy test cases (time limit exceeded)
        bugs_src = "{}/bugs".format(CONF.debug_dir)
        if os.path.isdir(bugs_src):
            run(["cp", "-r", bugs_src, "{loc}_bugs".format(loc=self.report_dir)])

        ref_round = round

        if not single_run and not CONF.no_priming:
            # copy over exact list of inputs which caused violation
            for name in ["primer", "reference"]:
                input_pickle_path = f"{CONF.debug_dir}/{CONF.test_case}/inputpickle_{name}.pkl"
                shutil.copyfile(input_pickle_path, f"{self.report_dir}/inputpickle_{name}.pkl")
            # priming files are saved with round of -1
            ref_round = -1
        elif not single_run:
            # Copy over pickled inputs (for reuse later)
            test_input_pickle_src = "{}/{}/inputpickle_{}_{}.pkl".format(CONF.debug_dir, CONF.test_case, round, test_input)
            ref_input_pickle_src = "{}/{}/inputpickle_{}_{}.pkl".format(CONF.debug_dir, CONF.test_case, round, ref_input)
            assert os.path.isfile(test_input_pickle_src), f"copy_debug_files: Input1 pickle {test_input_pickle_src} not found!"
            assert os.path.isfile(ref_input_pickle_src), f"copy_debug_files: Input2 pickle {ref_input_pickle_src} not found!"
            run(["cp", test_input_pickle_src, f'{self.report_dir}/inputpickle_input1.pkl'])
            run(["cp", ref_input_pickle_src, f'{self.report_dir}/inputpickle_input2.pkl'])


        # Copy over CTraces
        if CONF.debug:
            ctrace1_src = "{}/{}/CTrace_{}_{}.out".format(CONF.debug_dir, CONF.test_case, round, test_input)
            ctrace2_src = "{}/{}/CTrace_{}_{}.out".format(CONF.debug_dir, CONF.test_case, round, ref_input)
            run(["cp", ctrace1_src, "{loc}/CTrace_input1.out".format(loc=self.report_dir)])
            run(["cp", ctrace2_src, "{loc}/CTrace_input2.out".format(loc=self.report_dir)])


        #1. copy checkpoints
        if CONF.gem5_save_checkpoints and not head_input:
            run(["cp","{}/{}/checkpoint_{}_{}".format(CONF.debug_dir, CONF.test_case, round, base_input), "{loc}/cpt_base".format(loc=self.report_dir)])

        # copy the last round checkpoint (executor. la)
        elif CONF.gem5_enable_cross_test_case_checkpoints and round > 1:
           run(["cp","{}/{}/checkpoint_{}_{}".format(CONF.debug_dir, CONF.test_case, round-1, self.executor.base_input), "{loc}/cpt_base".format(loc=self.report_dir)])

        #2. copy logs
        log_input1_src = "{}/{}/log_{}_{}.out".format(CONF.debug_dir, CONF.test_case, round, test_input)
        log_input2_src = "{}/{}/log_{}_{}.out".format(CONF.debug_dir, CONF.test_case, ref_round, ref_input)
        log_input1_dest = '{loc}/log_input1.out'.format(loc=self.report_dir)
        log_input2_dest = '{loc}/log_input2.out'.format(loc=self.report_dir)
        # assert Path(log_input1_src).exists() == Path(log_input2_src).exists() 
        # Race cond. exists in IPC fuzzing for per test case finish; Must check individually!
        if not (Path(log_input1_src).exists()):
            with open(log_input1_src, 'w') as logfile:
                run(["echo", f"Blank log file from test case {CONF.test_case}, input pair {round}_{test_input}"], stdout=logfile)
        if not (Path(log_input2_src).exists()):
            with open(log_input2_src, 'w') as logfile:
                run(["echo", f"Blank log file from test case {CONF.test_case}, input pair {round}_{ref_input}"], stdout=logfile)

        # If these fail, the rest of the copies will fail as well!
        log_ret1 = run(["cp", log_input1_src, log_input1_dest]).returncode
        log_ret2 = run(["cp", log_input2_src, log_input2_dest]).returncode
        if (log_ret1 != 0):
            print(f"\ncopy_debug_files: Warning - Log copy from {log_input1_src} to {log_input1_dest} failed!")
        if(log_ret2 != 0):
            print(f"\ncopy_debug_files: Warning - Log copy from {log_input2_src} to {log_input2_dest} failed!")

        # Copy configs
        run(["cp","{}/{}/config_{}_{}.ini".format(CONF.debug_dir, CONF.test_case, round, test_input), '{loc}/config_input1.ini'.format(loc=self.report_dir)])
        run(["cp","{}/{}/config_{}_{}.ini".format(CONF.debug_dir, CONF.test_case, ref_round, ref_input), '{loc}/config_input2.ini'.format(loc=self.report_dir)])

        # Copy gem5out.out
        run(["cp","{}/{}/gem5out_{}_{}.out".format(CONF.debug_dir, CONF.test_case, round, test_input), '{loc}/gem5out_input1.out'.format(loc=self.report_dir)])
        run(["cp","{}/{}/gem5out_{}_{}.out".format(CONF.debug_dir, CONF.test_case, ref_round, ref_input), '{loc}/gem5out_input2.out'.format(loc=self.report_dir)])

        # Copy stats.txt
        run(["cp","{}/{}/stats_{}_{}.txt".format(CONF.debug_dir, CONF.test_case, round, test_input), '{loc}/stats_input1.txt'.format(loc=self.report_dir)], stderr=DEVNULL)
        run(["cp","{}/{}/stats_{}_{}.txt".format(CONF.debug_dir, CONF.test_case, ref_round, ref_input), '{loc}/stats_input2.txt'.format(loc=self.report_dir)], stderr=DEVNULL)

        #3. copy testcase
        if CONF.gem5_orchestration == "ipc":
            run(["cp","{}/{}/test_case.asm".format(CONF.debug_dir, CONF.test_case), '{loc}/test_case_rvzr_input1.asm'.format(loc=self.report_dir)])
            run(["cp","{}/{}/test_case.asm".format(CONF.debug_dir, CONF.test_case), '{loc}/test_case_rvzr_input2.asm'.format(loc=self.report_dir)])
        else:
            run(["cp","{}/{}/test_case_rvzr_{}_{}.asm".format(CONF.debug_dir, CONF.test_case, round, test_input), '{loc}/test_case_rvzr_input1.asm'.format(loc=self.report_dir)])
            run(["cp","{}/{}/test_case_rvzr_{}_{}.asm".format(CONF.debug_dir, CONF.test_case, round, ref_input), '{loc}/test_case_rvzr_input2.asm'.format(loc=self.report_dir)])
            run(["cp","{}/{}/test_case_{}_{}.asm".format(CONF.debug_dir, CONF.test_case, round, test_input), '{loc}/test_case_input1.asm'.format(loc=self.report_dir)])
            run(["cp","{}/{}/test_case_{}_{}.asm".format(CONF.debug_dir, CONF.test_case, round, ref_input), '{loc}/test_case_input2.asm'.format(loc=self.report_dir)])
            run(["cp","{}/{}/test_case_{}_{}.out".format(CONF.debug_dir, CONF.test_case, round, test_input), '{loc}/test_case_input1.out'.format(loc=self.report_dir)])
            run(["cp","{}/{}/test_case_{}_{}.out".format(CONF.debug_dir, CONF.test_case, round, ref_input), '{loc}/test_case_input2.out'.format(loc=self.report_dir)])
            # Disassemble test case (for easy post-debugging)
            with open(f"{self.report_dir}/test_case_input1.dump", 'w') as dumpfile:
                run(["objdump","-d", '{loc}/test_case_input1.out'.format(loc=self.report_dir)], stdout=dumpfile)
            with open(f"{self.report_dir}/test_case_input2.dump", 'w') as dumpfile:
                run(["objdump","-d", '{loc}/test_case_input2.out'.format(loc=self.report_dir)], stdout=dumpfile)

        # Create memory packets trace
        # if any("timing" in source for source in CONF.gem5_attacker_mode["sources"]):
        #     input1_path = "{debug}/{test_case}/{trace}_{idx}_{input}.gz".format(debug=CONF.debug_dir, test_case=CONF.test_case, trace='dCacheTrace', idx=round, input=test_input)
        #     input1_orig_path = "{debug}/{test_case}/{trace}_{idx}_{input}.gz".format(debug=CONF.debug_dir, test_case=CONF.test_case, trace='dCacheTrace_orig', idx=round, input=test_input)
        #     packets_input1, _header = self.executor.read_packets(input1_path)
        #     packets_input1_orig, _header = self.executor.read_packets(input1_orig_path)

        #     input2_path = "{debug}/{test_case}/{trace}_{idx}_{input}.gz".format(debug=CONF.debug_dir, test_case=CONF.test_case, trace='dCacheTrace', idx=round, input=ref_input)
        #     input2_orig_path = "{debug}/{test_case}/{trace}_{idx}_{input}.gz".format(debug=CONF.debug_dir, test_case=CONF.test_case, trace='dCacheTrace_orig', idx=round, input=ref_input)
        #     packets_input2, _header = self.executor.read_packets(input2_path)
        #     packets_input2_orig, _header = self.executor.read_packets(input2_orig_path)

        #     mem_trace_1 = open('{loc}/memory_packets_1.out'.format(loc=self.report_dir), "w")
        #     mem_trace_1_orig = open('{loc}/memory_packets_1_orig.out'.format(loc=self.report_dir), "w")
        #     mem_trace_2 = open('{loc}/memory_packets_2.out'.format(loc=self.report_dir), "w")
        #     mem_trace_2_orig = open('{loc}/memory_packets_2_orig.out'.format(loc=self.report_dir), "w")
        #     for pkt in packets_input1:
        #         print(pkt, file=mem_trace_1)
        #     for pkt in packets_input1_orig:
        #         print(pkt, file=mem_trace_1_orig)
        #     for pkt in packets_input2:
        #         print(pkt, file=mem_trace_2)
        #     for pkt in packets_input2_orig:
        #         print(pkt, file=mem_trace_2_orig)
        #     mem_trace_1.close()
        #     mem_trace_1_orig.close()
        #     mem_trace_2.close()
        #     mem_trace_2_orig.close()

        run(["cp","{}/{}/cache_tags_{}_{}".format(CONF.debug_dir, CONF.test_case, round, test_input), "{loc}/cache_tags_1".format(loc=self.report_dir)])
        run(["cp","{}/{}/cache_tags_{}_{}".format(CONF.debug_dir, CONF.test_case, ref_round, ref_input), '{loc}/cache_tags_2'.format(loc=self.report_dir)])

        # Copy config
        run(["cp","{}".format(CONF.config_path), '{loc}/configuration.yaml'.format(loc=self.report_dir)])
