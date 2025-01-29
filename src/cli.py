#!/usr/bin/env python3
"""
File: Command Line Interface

Copyright (C) Microsoft Corporation
SPDX-License-Identifier: MIT
"""

import os
import yaml
from typing import Dict
from argparse import ArgumentParser
from fuzzer import Fuzzer
from postprocessor import Postprocessor
from config import CONF
from service import LOGGER
from subprocess import run


def main():
    parser = ArgumentParser(description='', add_help=False)
    subparsers = parser.add_subparsers(dest='subparser_name')

    # Fuzzing
    parser_fuzz = subparsers.add_parser('fuzz')
    parser_fuzz.add_argument(
        "-s", "--instruction-set",
        type=str,
        required=True
    )
    parser_fuzz.add_argument(
        "-c", "--config",
        type=str,
        required=False
    )
    parser_fuzz.add_argument(
        "-n", "--num-test-cases",
        type=int,
        default=1,
        help="Number of test cases.",
    )
    parser_fuzz.add_argument(
        "-i", "--num-inputs",
        type=int,
        default=100,
        help="Number of inputs per test case.",
    )
    parser_fuzz.add_argument(
        '-w', '--working-directory',
        type=str,
        default='',
    )
    parser_fuzz.add_argument(
        '-t', '--testcase',
        type=str,
        default=None,
        help="Use an existing test case"
    )
    parser_fuzz.add_argument(
        '-ic', '--inputcase',
        type=str,
        default=None,
        help="Use an existing input (Path to pickle)"
    )
    parser_fuzz.add_argument(
        '--timeout',
        type=int,
        default=0,
        help="Run fuzzing with a time limit [seconds]. No timeout when set to zero."
    )
    parser_fuzz.add_argument(
        '--nonstop',
        action='store_true',
        help="Don't stop after detecting an unexpected result"
    )
    parser_fuzz.add_argument(
        "--name",
        type=str,
        required=False,
        default='one'
    )
    parser_fuzz.add_argument(
        "--gem5-path",
        type=str
    )
    parser_fuzz.add_argument(
        "--gem5-output",
        type=str
    )
    parser_fuzz.add_argument(
        "--gem5-binary",
        type=str
    )
    parser_fuzz.add_argument(
        "--gem5-se",
        type=str
    )
    # parser_fuzz.add_argument(
    #     "--gem5-options",
    #     type=str
    # )
    parser_fuzz.add_argument(
        "--gem5-restore",
        type=int
    )
    parser_fuzz.add_argument(
        "--output-dir",
        type=str
    )
    parser_fuzz.add_argument(
        "--result-dir",
        type=str,
        default="./"
    )
    parser_fuzz.add_argument(
        "-p", "--process-run",
        type=str
    )
    parser_fuzz.add_argument(
        "--ruby",
        action='store_true',
        required=False,
        help="Replace caches with Ruby caches"
    )
    parser_fuzz.add_argument(
        "--gen-seed",
        type=int,
        default=0,
        help="the generator seed"
    )
    parser_fuzz.add_argument(
        "--entropy-bits",
        type=int,
        default=0,
        help="inputs entropy"
    )
    parser_fuzz.add_argument(
        "--input-seed",
        type=int,
        default=0,
        help="inputs seed"
    )
    parser_fuzz.add_argument(
        "--InvisiSpec",
        action='store_true',
        required=False,
        help="Needed to run on InvisiSpec"
    )
    parser_fuzz.add_argument(
        "--InvisiSpec_UnsafeBaseline",
        action='store_true',
        required=False,
        help="Must first specify --InvisiSpec; Downgrades defenses to standard O3CPU!"
    )
    parser_fuzz.add_argument(
        "--InvisiSpec_FuturisticSpec",
        action='store_true',
        required=False,
        help="Must first specify --InvisiSpec; Strengthens Invisible Speculation Scheme!"
    )
    parser_fuzz.add_argument(
        "--STT",
        action='store_true',
        required=False,
        help="Needed to run on STT"
    )
    parser_fuzz.add_argument(
        "--STT_UnsafeBaseline",
        action='store_true',
        required=False,
        help="Must first specify --STT; Downgrades defenses to standard O3CPU!"
    )
    parser_fuzz.add_argument(
        "--STT_FuturisticSpec",
        action='store_true',
        required=False,
        help="Must first specify --InvisiSpec; Strengthens STT Speculation Scheme!"
    )
    parser_fuzz.add_argument(
        "--DOLMA",
        action='store',
        type=lambda value: CONF.DOLMA_modes[value],
        required=False,
        default=False,
        help=f"DOLMA options = {[opt.name for opt in CONF.DOLMA_modes]}"
    )
    parser_fuzz.add_argument(
        "--SpecLFB",
        action='store_true',
        required=False,
        help="Needed to run on SpecLFB"
    )
    parser_fuzz.add_argument(
        "--SpecLFB_UnsafeBaseline",
        action='store_true',
        required=False,
        help="Must first specify --SpecLFB; Downgrades defenses to standard O3CPU!"
    )
    parser_fuzz.add_argument(
        "--CleanupSpec",
        action='store_true',
        required=False,
        help="Needed to run on CleanupSpec"
    )
    parser_fuzz.add_argument(
        "--CleanupSpec_UnsafeBaseline",
        action='store_true',
        required=False,
        help="Must first specify --CleanupSpec; Downgrades defenses to standard O3CPU!"
    )
    parser_fuzz.add_argument(
        "--ipc-persist-log",
        action='store_true',
        required=False,
        help="Don't truncate log file between runs of gem5"
    )
    parser_fuzz.add_argument(
        "--ipc-show-output",
        action='store_true',
        required=False,
        help="Show output of gem5 process"
    )
    parser_fuzz.add_argument(
        "--debug",
        action='store_true',
        required=False,
        help="Creating debug files on testing"
    )
    parser_fuzz.add_argument(
        "--debug-flags",
        type=str,
        default="",
        help="Debug flags used for debug run"
    )
    parser_fuzz.add_argument(
        "--no-save-stats",
        action='store_true',
        help="Don't save stats files (to reduce disk usage)"
    )
    parser_fuzz.add_argument(
        "--measure-uarch-diversity",
        action='store_true',
        help="Output a file (to results directory) with a measurement of the microarchitectural state diversity between inputs."
    )
    parser_fuzz.add_argument(
        "--profile",
        action='store_true',
        help="Measure where time is being spent"
    )
    parser_fuzz.add_argument(
        "--verbose", "-v",
        action='store_true',
        help="More verbose output for debugging"
    )
    parser_fuzz.add_argument(
        "--analysis_run",
        action='store_true',
        help="Running the analysis script"
    )

    parser_mini = subparsers.add_parser('minimize')
    parser_mini.add_argument(
        '--infile', '-i',
        type=str,
        required=True,
    )
    parser_mini.add_argument(
        '--inputcase', '-ic',
        type=str,
        default=None,
        help="Use an existing input"
    )
    parser_mini.add_argument(
        '--outfile', '-o',
        type=str,
        required=False,
        default=None
    )
    parser_mini.add_argument(
        "-c", "--config",
        type=str,
        required=False
    )
    parser_mini.add_argument(
        "-n", "--num-inputs",
        type=int,
        default=100,
        help="Number of inputs per test case.",
    )
    parser_mini.add_argument(
        "-f", "--add-fences",
        action='store_true',
        default=False,
        help="Add as many LFENCEs as possible, while preserving the violation.",
    )
    parser_mini.add_argument(
        "-s", "--instruction-set",
        type=str,
        required=True
    )
    parser_mini.add_argument(
        "--name",
        type=str,
        required=False,
        default='one'
    )
    parser_mini.add_argument(  # gem5vizor-specific
        "--gem5-path",
        type=str
    )
    parser_mini.add_argument(
        "--gem5-output",
        type=str
    )
    parser_mini.add_argument(
        "--gem5-binary",
        type=str
    )
    parser_mini.add_argument(
        "--gem5-se",
        type=str
    )
    # parser_mini.add_argument(
    #     "--gem5-options",
    #     type=str
    # )
    parser_mini.add_argument(
        "--gem5-restore",
        type=int
    )
    parser_mini.add_argument(
        "--output-dir",
        type=str
    )
    parser_mini.add_argument(
        "--result-dir",
        type=str,
        default="./"
    )
    parser_mini.add_argument(
        "-p", "--process-run",
        type=str
    )
    parser_mini.add_argument(
        "--ruby",
        action='store_true',
        required=False,
        help="Replace caches with Ruby caches"
    )
    parser_mini.add_argument(
        "--gen-seed",
        type=int,
        default=0,
        help="the generator seed"
    )
    parser_mini.add_argument(
        "--entropy-bits",
        type=int,
        default=0,
        help="inputs entropy"
    )
    parser_mini.add_argument(
        "--input-seed",
        type=int,
        default=0,
        help="inputs seed"
    )
    parser_mini.add_argument(
        "--InvisiSpec",
        action='store_true',
        required=False,
        help="Needed to run on InvisiSpec"
    )
    parser_mini.add_argument(
        "--InvisiSpec_UnsafeBaseline",
        action='store_true',
        required=False,
        help="Must first specify --InvisiSpec; Downgrades defenses to standard O3CPU!"
    )
    parser_mini.add_argument(
        "--InvisiSpec_FuturisticSpec",
        action='store_true',
        required=False,
        help="Must first specify --InvisiSpec; Strengthens Invisible Speculation Scheme!"
    )
    parser_mini.add_argument(
        "--STT",
        action='store_true',
        required=False,
        help="Needed to run on STT"
    )
    parser_mini.add_argument(
        "--CleanupSpec",
        action='store_true',
        required=False,
        help="Needed to run on CleanupSpec"
    )
    parser_mini.add_argument(
        "--DOLMA",
        action='store',
        type=lambda value: CONF.DOLMA_modes[value],
        required=False,
        default=False,
        help=f"DOLMA options = {[opt.name for opt in CONF.DOLMA_modes]}"
    )
    parser_mini.add_argument(
        "--SpecLFB",
        action='store_true',
        required=False,
        help="Needed to run on SpecLFB"
    )
    parser_mini.add_argument(
        "--debug",
        action='store_true',
        required=False,
        help="Creating debug files on testing"
    )
    parser_mini.add_argument(
        "--debug-flags",
        type=str,
        default="",
        help="Debug flags used for debug run"
    )
    parser_mini.add_argument(
        "--ipc-persist-log",
        action='store_true',
        required=False,
        help="Don't truncate log file between runs of gem5"
    )
    parser_mini.add_argument(
        "--ipc-show-output",
        action='store_true',
        required=False,
        help="Show output of gem5 process"
    )
    parser_mini.add_argument(
        "--verbose", "-v",
        action='store_true',
        help="More verbose output for debugging"
    )
    parser_mini.add_argument(
        "--no-save-stats",
        action='store_true',
        help="Don't save stats files (to reduce disk usage)"
    )
    parser_mini.add_argument(
        "--measure-uarch-diversity",
        action='store_true',
        help="Output a file (to results directory) with a measurement of the microarchitectural state diversity between inputs."
    )

    
    args = parser.parse_args()

    # Update configuration
    if args.subparser_name == 'fuzz' and args.analysis_run:
        CONF.set('analysis_run', True)
    
    if args.config:
        CONF.config_path = args.config
        with open(args.config, "r") as f:
            config_update: Dict = yaml.safe_load(f)
        for var, value in config_update.items():
            CONF.set(var, value)

    if args.verbose:
        CONF.set('verbose', True)
    if args.no_save_stats:
        CONF.set('save_stats', False)
    if args.gen_seed:
        CONF.set('test_case_generator_seed', args.gen_seed)
    if args.entropy_bits:
        CONF.set('input_gen_entropy_bits', args.entropy_bits)
    if args.input_seed:
        CONF.set('input_gen_seed', args.input_seed)
    
    if args.gem5_path:
        CONF.set('gem5_location', args.gem5_path)
    if args.gem5_output:
        CONF.set('gem5_output_location', args.gem5_output)
    if args.gem5_binary:
        CONF.set('gem5_binary', args.gem5_binary)
    if args.gem5_se:
        CONF.set('gem5_se', args.gem5_se)
    if args.output_dir:
        CONF.set('debug_dir', args.output_dir)
    # if args.gem5_options:
    #     CONF.set('gem5_flags', list(map(lambda x: '--'+x , args.gem5_options.split(','))))
    if args.gem5_restore:
        CONF.set('gem5_restore', args.gem5_restore)
    if args.process_run:
        args.process_run = '-' + args.process_run
        CONF.set('process_run', args.process_run[1:])
        CONF.set('gem5_output_location', CONF.gem5_output_location + args.process_run)
        CONF.set('gem5_checkpoint', CONF.gem5_checkpoint + args.process_run)
        CONF.set('debug_dir', CONF.debug_dir + args.process_run)
        # print(f"In args.process_run - CONF.debug_dir: {CONF.debug_dir}")

    # InvisiSpec Config
    if args.InvisiSpec:
        CONF.set('InvisiSpec', args.InvisiSpec)
        if args.InvisiSpec_UnsafeBaseline:
            CONF.set('InvisiSpec_UnsafeBaseline', args.InvisiSpec_UnsafeBaseline)
        if args.InvisiSpec_FuturisticSpec:
            CONF.set('InvisiSpec_FuturisticSpec', args.InvisiSpec_FuturisticSpec)
    
    if args.STT:
        CONF.set('STT', args.STT)
        if args.STT_UnsafeBaseline:
            CONF.set('STT_UnsafeBaseline', args.STT_UnsafeBaseline)
        if args.STT_FuturisticSpec:
            CONF.set('STT_FuturisticSpec', args.STT_FuturisticSpec)
    
    if args.DOLMA:
        assert args.DOLMA.name in [opt.name for opt in CONF.DOLMA_modes]
        CONF.set('DOLMA', True)
        CONF.set('DOLMA_mode', args.DOLMA)
        
    if args.SpecLFB:
        CONF.set('SpecLFB', args.SpecLFB)
        if args.SpecLFB_UnsafeBaseline:
            CONF.set('SpecLFB_UnsafeBaseline', args.SpecLFB_UnsafeBaseline)
    
    if args.CleanupSpec:
        CONF.set('CleanupSpec', args.CleanupSpec)
        if args.CleanupSpec_UnsafeBaseline:
            CONF.set('CleanupSpec_UnsafeBaseline', args.CleanupSpec_UnsafeBaseline)
        
    from pathlib import Path
    test_case = ''
    if args.name is not None:
        test_case = args.name
    elif args.config is not None:
        test_case = args.testcase.split('/')[1].split('.')[0] + '_' + args.config.split('/')[1].split('.')[0]
    elif args.test_case is not None:
        test_case = args.testcase.split('/')[1].split('.')[0]
    CONF.set('test_case', test_case)
    # print(f"Outside - Debug_dir: {CONF.debug_dir}")
    if os.path.isdir(CONF.debug_dir):
        # print(f"In os.path.isdir() - Debug_dir: {CONF.debug_dir}")
        run(['rm', '-rf', "{}".format(CONF.debug_dir)]) # Wipe debug dir and re-create
    Path('{}/{}'.format(CONF.debug_dir, CONF.test_case)).mkdir(parents=True, exist_ok=True)
    # print(f"After processing - Debug_dir: {CONF.debug_dir}, test_case: {CONF.test_case}")
    CONF.sanity_check()
    LOGGER.set_logging_modes()
    
    CONF.debug = args.debug
    if args.debug_flags:
        assert CONF.debug, "Overriding debug flags without setting debug mode"
        print(f"YAML debug flags overridden by args: {args.debug_flags}")
        CONF.debug_flags = args.debug_flags.split(',')
    
    CONF.ruby = args.ruby
    CONF.result_dir = args.result_dir
    CONF.profile = getattr(args, 'profile', False)
    CONF.gem5_ipc_persist_log = args.ipc_persist_log
    CONF.gem5_ipc_show_output = args.ipc_show_output
    CONF.measure_uarch_diversity = args.measure_uarch_diversity
    CONF.gem5_save_checkpoints = (not CONF.no_priming and CONF.gem5_orchestration != 'ipc') or CONF.gem5_enable_cross_test_case_checkpoints
    # Fuzzing
    if args.subparser_name == 'fuzz':  
        # Make sure we're ready for fuzzing
        if args.working_directory and not os.path.isdir(args.working_directory):
            Path('{loc}'.format(loc=args.working_directory)).mkdir(parents = True, exist_ok=True)
            # raise SystemExit("The working directory does not exist")
        # Normal fuzzing mode
        fuzzer = Fuzzer(args.instruction_set, args.working_directory, args.testcase, args.inputcase)
        fuzzer.start(
            args.num_test_cases,
            args.num_inputs,
            args.timeout,
            args.nonstop,
        )
        return

    # Test Case minimisation
    if args.subparser_name == "minimize":
        CONF.coverage_type = 'none'
        postprocessor = Postprocessor(args.instruction_set)
        outfile = args.outfile
        if outfile is None:
            if not args.infile.endswith('.asm'):
                print("Minimization input doesn't end with .asm")
                print("   Please correct the file name or provide an explicit --outfile")
                return
            outfile = args.infile[:-4] + '_minimized.asm'
        postprocessor.minimize(args.infile, args.inputcase, outfile, args.num_inputs, args.add_fences)
        return

    raise Exception("Unreachable")


if __name__ == '__main__':
    main()
