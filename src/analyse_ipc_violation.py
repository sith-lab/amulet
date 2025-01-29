#!/usr/bin/env python3.11

import argparse
import sys
import os
import pickle
import toml
import re
from typing import List, Optional
from shutil import copyfile
from subprocess import run, Popen, PIPE, DEVNULL
from abc import ABC, abstractmethod

python = sys.executable # path to python interpreter

parser = argparse.ArgumentParser(prog='IPC orchestration violation analyzer')

# Requirements:
#   - $PWD is $RVZR_DIR/src
#   - Input: Violation dir

parser.add_argument('violation', help='Directory containing information about the violation, e.g. results/5hrs-6mins-3secs')
parser.add_argument('--analysis-dir', help='gem5zor individual run results', type=str, default='None') # default will be set to f'{violation}/analysis'

# Does not work with --ipc-show-output --debug --verbose
parser.add_argument('--args', help='''Space-separated list of extra arguments to provide to `cli.py fuzz`.
This should include at least -c <YAML configuration file> -s <path to ISA spec>''')
parser.add_argument('--debug-flags', help='Debug flags to run `cli.py fuzz` with', default='LSQUnit,Squashed,Branch,AnalyseIPC')
parser.add_argument('--use-yaml-debug-flags', help='Use YAML debug flags instead of CLI debug flags', action='store_true')
parser.add_argument('--only-run', help='Just run the fuzzer; don\'t try to analyze the resulting violation.', action='store_true')
parser.add_argument('--only-disassemble', help='Just show the disassembly; don\'t run Revizor', action='store_true')
parser.add_argument('--only-analyze', help='Only analyze a previously populated analysis directory.', action='store_true', default=False)
parser.add_argument('--pc-to-line', help='Just find instruction corresponding to the given PC; don\'t run Revizor', type=str)
parser.add_argument('-p', '--process-run', type=str, default='analyse_ipc_violation')
parser.add_argument('--no-color', help='Disable rich text output', action='store_true')
parser.add_argument('--branch-predictions', help='Include branch predictions in event log', action='store_true')
cache_line_size = 64
 
args = parser.parse_args()

def ansi(x: str | int) -> str:
    ''' returns ANSI escape code, or nothing if rich text output is disabled '''
    return '' if args.no_color else f'\x1b[{x}m'

violation = args.violation.rstrip('/')
revizor_arguments = None if args.args is None else [arg for arg in args.args.split(' ') if arg]
find_violation = not args.only_run
if (args.only_analyze):
    # args.debug_flags, args.process_run has non-empty default values
    ast = args.only_run or revizor_arguments or args.use_yaml_debug_flags
    assert not ast, "We are not running the fuzzer!"

expected_path = "/code/revizor-docker/src"
assert os.getcwd() == expected_path, \
    f"Current working directory is {os.getcwd()}, but expected {expected_path}"

ORCHESTRATION_CODE = '<in orchestration code>'
MID_INSTRUCTION = '<mid-instruction byte>'
code_addr = 0x402000
code_size = 512
def in_orchestration_code(pc: int) -> bool:
    ''' Returns False if this pc is actually part of the test case, rather than the orchestration code (cache flushing, etc.) '''
    return not (code_addr <= pc < code_addr + code_size)
def get_disassembly() -> str:
    assert os.path.isfile(obj_file), f'Try running `cli.py fuzz` (or a regular analysis run) first on {asm_file} so that it creates {obj_file}.'
    obj_size = os.path.getsize(obj_file)
    code_start = code_addr + code_size - obj_size
    process = Popen(['objdump', '--no-show-raw-insn', '-M', 'intel', '-b', 'binary', '-m', 'i386:x86-64', '--adjust-vma', hex(code_start), '-D', obj_file], stdout=PIPE)
    stdout, _ = process.communicate()
    return stdout.decode()
def pc_to_line(pc: int) -> str:
    ''' Get line in disassembly from PC address '''
    if in_orchestration_code(pc):
        return ORCHESTRATION_CODE
    matches = re.findall(fr'^\s*\d*\s*{pc:x}:.*$', disassembly, flags=re.MULTILINE)
    if len(matches) == 0:
        return MID_INSTRUCTION
    if len(matches) > 1: print(f'WARNING: multiple matches found for offset {offset:#x}. Only showing the first one.')
    return matches[0]

asm_file = f'{violation}/test_case_rvzr_input1.asm'
minimized_asm_file = f'{violation}/test_case_rvzr_input1_minimized.asm'
if os.path.exists(minimized_asm_file):
    print('Using minimized assembly file', minimized_asm_file)
    asm_file = minimized_asm_file
obj_file = asm_file.replace('.asm', '.o')

if args.only_disassemble:
    print('Full disassembly:')
    print(get_disassembly())
    exit(0)

if not os.path.isfile(asm_file):
    print(asm_file, 'is not a file. Are you sure the violation directory is correct?')
    exit(1)
pickle_reference = f'{violation}/inputpickle_reference.pkl' 
if not os.path.isfile(pickle_reference):
    print(pickle_reference, 'is not a file. This tool only works for IPC orchestration, when priming is enabled.')
    exit(1)
pickle_primer = f'{violation}/inputpickle_primer.pkl' 
if not os.path.isfile(pickle_primer):
    print(pickle_primer, 'is not a file.')
    exit(1)

with open(pickle_reference, 'rb') as f:
    inputs = pickle.load(f)
    assert isinstance(inputs, list), 'expected pickle to contain list of inputs'
    assert len(inputs) > 0, 'expected at least 1 input'
    last_input = len(inputs) - 1

if args.process_run is not None:
    debug_dir = f'debug-{args.process_run}/one'
    process_run_args = ['-p', args.process_run]
else:
    debug_dir = 'debug/one'
    process_run_args = []

cache_tags = {}
logs = {}
def copy_debug_files(prefix):
    for filename in os.listdir(debug_dir):
        dot = filename.rfind('.')
        is_last_input = (filename[:dot] if dot != -1 else filename).endswith(f'_{last_input}')
        if is_last_input:
            dest = f'{analysis_dir}/{prefix}_{filename}'
            copyfile(f'{debug_dir}/{filename}', dest)
            if find_violation and filename.startswith('cache_tags_') and filename.endswith('.toml'):
                with open(dest, 'r') as f:
                    data = toml.load(f)
                    assert prefix not in cache_tags, 'multiple cache tags files found'
                    if 'ruby' in data['system']:
                        addresses = data['system']['ruby']['l1_cntrl0']['L1Dcache']['addresses']
                    else:
                        addresses = data['system']['cpu']['dcache']['addresses']
                    cache_tags[prefix] = set(int(tag) for tag in addresses.split() if tag)
            if find_violation and filename.startswith('log_') and filename.endswith('.out'):
                with open(dest, 'r') as f:
                    assert prefix not in logs, 'multiple log files found'
                    logs[prefix] = f.read()

def upload_existing_analysis(prefix):
    for filename in os.listdir(analysis_dir):
        dest = f'{analysis_dir}/{filename}'
        if filename.startswith(f'{prefix}_cache_tags_') and filename.endswith('.toml'):
            with open(dest, 'r') as f:
                data = toml.load(f)
                assert prefix not in cache_tags, 'multiple cache tags files found'
                if 'ruby' in data['system']:
                        addresses = data['system']['ruby']['l1_cntrl0']['L1Dcache']['addresses']
                else:
                    addresses = data['system']['cpu']['dcache']['addresses']
                cache_tags[prefix] = set(int(tag) for tag in addresses.split() if tag)
        if filename.startswith(f'{prefix}_log_') and filename.endswith('.out'):
            with open(dest, 'r') as f:
                assert prefix not in logs, 'multiple log files found'
                logs[prefix] = f.read()


if args.pc_to_line:
    disassembly = get_disassembly()
    pc = int(args.pc_to_line, 16)
    line = pc_to_line(pc)
    if line == MID_INSTRUCTION:
        print(f'PC {pc:#x} lies in between two instructions in the test case code.')
    elif line == ORCHESTRATION_CODE:
        print(f'PC {pc:#x} lies outside of the test case code.')
    else:
        print(f'PC {pc:#x} corresponds to this line of the disassembly:')
        print(line)
    print('--- full disassembly ---')
    print(disassembly)
    exit(0)

analysis_dir = args.analysis_dir
if analysis_dir == 'None':  # Backwards compatibility
    analysis_dir = f'{violation}/analysis'
if args.only_analyze:
    assert os.path.exists(analysis_dir) and os.listdir(analysis_dir), \
        f"Analysis directory from a prev. run '{analysis_dir}' must exist to use --only-analyze."
else:
    run(['rm', '-rf', analysis_dir], check=True)
    os.makedirs(analysis_dir)

if args.only_analyze:
    disassembly = get_disassembly()
    print("Skipping Revizor run, only analyzing existing results.")
    upload_existing_analysis('reference')
    print("Read reference cache tags and logs.")
    upload_existing_analysis('primer')
    print("Read primer cache tags and logs.")
else:
    assert revizor_arguments, 'Please provide the arguments you passed to revizor with --args'
    print('Running reference input pickle...')
    if args.use_yaml_debug_flags:
        print('Using YAML debug flags for reference input')
        # print(["DEBUG: "] + [python, 'cli.py', 'fuzz', '--debug', '-t', asm_file, '-ic', pickle_reference] + process_run_args + revizor_arguments)
        run([python, 'cli.py', 'fuzz', '--analysis_run', '--debug', '-t', asm_file, '-ic', pickle_reference] + process_run_args + revizor_arguments, stdout=DEVNULL)
    else:
        run([python, 'cli.py', 'fuzz', '--analysis_run', '--debug', f'--debug-flags={args.debug_flags}', '-t', asm_file, '-ic', pickle_reference] + process_run_args + revizor_arguments, stdout=DEVNULL)
    copy_debug_files('reference')
    print('Running primer input pickle...')
    if args.use_yaml_debug_flags:
        print('Using YAML debug flags for primer input')
        # print(["DEBUG: "] + [python, 'cli.py', 'fuzz', '--debug', '-t', asm_file, '-ic', pickle_primer] + process_run_args + revizor_arguments)
        run([python, 'cli.py', 'fuzz', '--analysis_run', '--debug', '-t', asm_file, '-ic', pickle_primer] + process_run_args + revizor_arguments, stdout=DEVNULL)
    else:
        run([python, 'cli.py', 'fuzz', '--analysis_run', '--debug', f'--debug-flags={args.debug_flags}', '-t', asm_file, '-ic', pickle_primer] + process_run_args + revizor_arguments, stdout=DEVNULL)
    copy_debug_files('primer')
    if not find_violation:
        print('Relevant files have been saved to', analysis_dir)
        exit(0)
    disassembly = get_disassembly()
    with open(f'{analysis_dir}/test_case_rvzr.dump', 'w') as file:
        file.write(disassembly)

assert 'reference' in cache_tags, 'couldn\'t find cache tags file for reference run'
assert 'primer' in cache_tags, 'couldn\'t find cache tags file for primer run'
assert 'reference' in logs, 'couldn\'t find log file for reference run'
assert 'primer' in logs, 'couldn\'t find log file for primer run'

VIOLATION_FMT_START = ansi(91) + ansi(1)
VIOLATION_FMT_END = '*' + ansi(0)

class Event(ABC):
    tick: int
    pc: int
    def in_orchestration_code(self) -> bool:
        return in_orchestration_code(self.pc)

class Squash(Event):
    @abstractmethod
    def detail(self, compare_vs=None): pass
    def description(self, compare_vs=None):
        return f'{ansi(96)}{ansi(1)}SQUASH @{self.tick:9}{ansi(0)} ' + self.detail(compare_vs)

class SquashMemoryDependence(Squash):
    ''' squash due to memory dependence misprediction '''
    addr: int
    pc_other: int
    def detail(self, compare_vs=None):
        return f'Memory dependence mispredicted\n                   with {self.pc_other:#x} at addr {self.addr:#x}'

class SquashBranch(Squash):
    ''' squash due to branch misprediction '''
    def detail(self, compare_vs=None):
        return 'Branch mispredicted!'

class Access(Event):
    is_store: bool
    is_violation: bool
    data: str
    squashed_at: Optional[int]
    paddr: int
    vaddr: int
    seq_num: int
    def __init__(self):
        self.data = ''
        self.is_violation = False
        self.squashed_at = None
    def description(self, compare_vs=None):
        kind = 'Store' if self.is_store else 'Load '
        squash = ''
        addr_start = ''
        addr_end = ''
        if self.is_violation:
            addr_start = VIOLATION_FMT_START
            addr_end = VIOLATION_FMT_END
        elif compare_vs and self.vaddr != compare_vs.vaddr:
            addr_start = ansi(1)+ansi(93)
        tick_start = ''
        if compare_vs and self.tick != compare_vs.tick:
            tick_start = ansi(1)+ansi(93)
        s = f'{kind:6} @{tick_start}{self.tick:9}{ansi(0)} {addr_start}addr = {self.vaddr:#x}{addr_end}{ansi(0)}'
        if self.data:
            data_start = ''
            if compare_vs and compare_vs.data and self.data != compare_vs.data:
                data_start = ansi(1)+ansi(93)
            s += f'\n{data_start}data = {self.data:16}{ansi(0)}'
        if self.squashed_at is not None:
            if not self.data: s += '\n'
            s += f'  {ansi(96)}SQUASHED @{self.squashed_at}{ansi(0)}'
        return s

class BranchPrediction(Event):
    ''' event describing which way a branch was predicted to go'''
    # Predicted target of branch
    target: int
    def description(self, compare_vs=None):
        target_start = ''
        target_end = ''
        if compare_vs and self.target != compare_vs.target:
            target_start = ansi(1)+ansi(93)
            target_end = ansi(0)
        return f'Predicting branch to have target {target_start}{self.target:#x}{target_end}'

def parse_events(log) -> List[Event]:
    accesses = {}
    loads = re.findall(r'^([0-9]+):.*Attempting load request - PC (0x[0-9a-f]+), SQ: \[sn:([0-9]+)\], Paddr (0x[0-9a-f]+), Vaddr (0x[0-9a-f]+)', log, flags=re.MULTILINE)
    for load in loads:
        access = Access()
        access.is_store = False
        access.tick = int(load[0])
        access.pc = int(load[1], 0)
        access.seq_num = int(load[2])
        access.paddr = int(load[3], 0)
        access.vaddr = int(load[4], 0)
        accesses[access.seq_num] = access
    stores = re.findall(r'^([0-9]+):.*Store request - PC (0x[0-9a-f]+), SQ: \[sn:([0-9]+)\], Paddr (0x[0-9a-f]+), Vaddr (0x[0-9a-f]+)', log, flags=re.MULTILINE)
    for store in stores:
        access = Access()
        access.is_store = True
        access.tick = int(store[0])
        access.pc = int(store[1], 0)
        access.seq_num = int(store[2], 0)
        access.paddr = int(store[3], 0)
        access.vaddr = int(store[4], 0)
        accesses[access.seq_num] = access
    squashed_accesses = re.findall(r'^([0-9]+):.*LSQUnit - Squashed (Load|Store): PC (0x[0-9a-f]+), SQ: \[sn:([0-9]+)\], Paddr (0x[0-9a-f]+), Vaddr (0x[0-9a-f]+)', log, flags=re.MULTILINE)
    for squash in squashed_accesses:
        kind = squash[1]
        squash_pc = int(squash[2], 0)
        seq_num = int(squash[3], 0)
        squash_paddr = int(squash[4], 0)
        squash_vaddr = int(squash[5], 0)
        if not seq_num in accesses:
            print(f"WARNING: squash for {kind} sn:{seq_num} doesn't match any {kind} requests")
            continue
        access = accesses[seq_num]
        if access.is_store != (kind == 'Store'):
            print(f"WARNING: squash @ sn:{seq_num} says it's for a {kind}, but earlier log said it was a {'Store' if access.is_store else 'Load'}")
        if access.pc != squash_pc:
            print(f"WARNING: squash @ sn:{seq_num} says it's for PC={squash_pc:#x}, but earlier log said it was for PC={access.pc:#x}")
        if access.paddr != squash_paddr:
            print(f"WARNING: squash @ sn:{seq_num} says it's for paddr {squash_paddr:#x}, but earlier log said it was for paddr {access.paddr:#x}")
        if access.vaddr != squash_vaddr:
            print(f"WARNING: squash @ sn:{seq_num} says it's for vaddr {squash_vaddr:#x}, but earlier log said it was for paddr {access.vaddr:#x}")
        access.squashed_at = int(squash[0])
        
    for data in re.findall('analyse_ipc_violation.py: info for sn=([0-9]+): data=([0-9a-f]+)', log, flags=re.MULTILINE):
        seq_num = int(data[0])
        if seq_num in accesses:
            accesses[seq_num].data = data[1]

    events = list(accesses.values())
    memory_dependence_mispredictions = re.findall(r'^([0-9]+):.*Detected fault with inst \[sn:([0-9]+)\] and \[sn:([0-9]+)\] at address (0x[0-9a-f]+)', log, flags=re.MULTILINE)
    for misprediction in memory_dependence_mispredictions:
        tick = int(misprediction[0])
        sn1 = int(misprediction[1])
        sn2 = int(misprediction[2])
        addr = int(misprediction[3], 0)
        if sn1 in accesses and sn2 in accesses:
            squash = SquashMemoryDependence()
            squash.tick = tick
            squash.pc = accesses[sn2].pc
            squash.pc_other = accesses[sn1].pc
            squash.addr = addr
            events.append(squash)
        else:
            print(f"WARNING: memory dependence misprediction @{tick} btwn [sn:{sn1}] and [sn:{sn2}], but couldn't find any details about those accesses.")
    branch_mispredictions = re.findall(r'^([0-9]+):.*analyse_ipc_violation: Mispredicted branch at PC (0x[0-9a-f]+)', log, flags=re.MULTILINE)
    for misprediction in branch_mispredictions:
        tick = int(misprediction[0])
        pc = int(misprediction[1], 0)
        squash = SquashBranch()
        squash.tick = tick
        squash.pc = pc
        events.append(squash)
    if args.branch_predictions:
        branch_predictions = re.findall(r'^([0-9]+):.*analyse_ipc_violation: predicting branch at (0x[0-9a-f]+) to go to (0x[0-9a-f]+)', log, flags=re.MULTILINE)
        for prediction in branch_predictions:
            tick = int(prediction[0])
            pc = int(prediction[1], 0)
            target = int(prediction[2], 0)
            pred = BranchPrediction()
            pred.tick = tick
            pred.pc = pc
            pred.target = target
            events.append(pred)
    return sorted(events, key=lambda event: event.tick)
    
print('--- full disassembly ---')
print(disassembly)

print('--- event log ---')
events_ref = parse_events(logs['reference'])
events_primer = parse_events(logs['primer'])
i_ref = 0
i_primer = 0


for found, not_found in [('reference', 'primer'), ('primer', 'reference')]:
    for tag in cache_tags[found]:
        if tag not in cache_tags[not_found]:
            events = events_ref if found == 'reference' else events_primer
            found_any = False
            for event in events:
                if not isinstance(event, Access): continue
                if (event.paddr & ~(cache_line_size - 1)) != tag:
                    continue
                found_any = True
                event.is_violation = True
                if in_orchestration_code(event.pc):
                    print(f'Tag {tag:#x} present in {found} run but not {not_found} run.')
                    print("   This address was accessed in the orchestration code, so it can't be analyzed automatically")
                elif not event.squashed_at:
                    print("Non-speculative violation found!")
                    print(f'Non-speculative access to {tag:#x} at {event.tick} in {found} run, but not in {not_found} run.')
            if not found_any:
                print(f'Tag {tag:#x} present in {found} run but not {not_found} run.')
                print("Couldn't find any matching accesses in the debug log.") # Violation not found!

events_ref = [a for a in events_ref if not in_orchestration_code(a.pc)]
events_primer = [a for a in events_primer if not in_orchestration_code(a.pc)]


class TwoColumnOutput:
    def __init__(self, column_size, files=[sys.stdout]):
        self.column_size = column_size
        self.lines = []
        self.right_side = False
        self.files = files
    def print(self, text):
        for file in self.files:
            file.write(text + '\n')
            file.flush()
    def pad(self, text):
        ''' pad to self.column_size '''
        # don't include ANSI escape sequences in length
        length = len(re.sub('\x1b\\[[^m]*m', '', text))
        return text + ' ' * (self.column_size - length)
    def print_left(self, text):
        for left in text.split('\n'):
            left = self.pad(left)
            if self.lines and self.right_side:
                right = self.lines.pop(0)
                self.print(f'{left}| {right}')
            else:
                self.right_side = False
                self.lines.append(left)
    def print_right(self, text):
        for right in text.split('\n'):
            right = self.pad(right)
            if self.lines and not self.right_side:
                left = self.lines.pop(0)
                self.print(f'{left}| {right}')
            else:
                self.right_side = True
                self.lines.append(right)
    def flush(self):
        for line in self.lines:
            if self.right_side:
                self.print(self.pad('') + '| ' + line)
            else:
                self.print(self.pad(line) + '|')
        self.lines = []
    def hline(self):
        self.flush()
        self.print('-' * (self.column_size * 2 + 2))

print()
event_log = open(f'{analysis_dir}/event_log.txt', 'w')
output = TwoColumnOutput(column_size = 50, files=[sys.stdout, event_log])
output.hline()
output.print_left('Reference')
output.print_right('Primer')
output.hline()

while i_ref < len(events_ref) or i_primer < len(events_primer):
    if i_ref >= len(events_ref):
        which = {'primer'}
    elif i_primer >= len(events_primer):
        which = {'reference'}
    elif events_ref[i_ref].pc < events_primer[i_primer].pc:
        which = {'reference'}
    elif events_ref[i_ref].pc > events_primer[i_primer].pc:
        which = {'primer'}
    else:
        which = {'primer', 'reference'}
    if 'reference' in which:
        event_reference = events_ref[i_ref]
        i_ref += 1
        pc = event_reference.pc
    if 'primer' in which:
        event_primer = events_primer[i_primer]
        i_primer += 1
        pc = event_primer.pc

    output.print(pc_to_line(pc))
    if 'reference' in which:
        output.print_left(event_reference.description(compare_vs = event_primer if 'primer' in which else None))
    if 'primer' in which:
        output.print_right(event_primer.description(compare_vs = event_reference if 'reference' in which else None))
    output.flush()
    output.hline()
output.print('')
output.print(VIOLATION_FMT_START + 'address' + VIOLATION_FMT_END + ' = tag present in one run but not the other')
event_log.close()

print()
print('Relevant files have been saved to', analysis_dir)
