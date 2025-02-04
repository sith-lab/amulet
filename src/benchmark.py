import subprocess
import selectors
import argparse
import sys
import os
import re
import time
import signal
import statistics
import math
import yaml
from typing import List, Optional
from datetime import datetime
from glob import glob
import random

parser = argparse.ArgumentParser(
    prog='Revizor benchmark',
    description='Run benchmarks of Revizor',
)
parser.add_argument('-c', '--configs',
    required=True,
    help='comma-separated list of yaml config files to compare')
parser.add_argument('-e', '--extra-args',
    required=True,
    help='comma-separated list of extra arguments to supply to Revizor')
parser.add_argument('-v', '--verbose', action='store_true',
    help='show Revizor output in real time, etc.')
parser.add_argument('-t', '--timeout',
    help='max number of seconds to run for', type=float)
parser.add_argument('-i', '--input-count',
    help='number of inputs to try for each test case', type=int, default=70)
parser.add_argument('-n', '--test-case-count', # Paper default is 200
    help='max number of test cases to run', type=int)
timestamp = datetime.now().strftime('%Y%m%d%H%M%S')
parser.add_argument('-o', '--output',
    help='output directory', default=f'benchmark-out-{timestamp}')
parser.add_argument('--stop-after-first-violation', action='store_true')
parser.add_argument('-r', '--parallel_instances', type=int,
    help='number of fuzzing runs in parallel', default=50)
parser.add_argument('-p', '--process', type=str,
    help='process identifier - if you are running multiple benchmarks at once, this must be different for each one!', default='')
args = parser.parse_args()

case_count = 10 ** 9
timeout = 1e100
if args.test_case_count is not None:
    case_count = args.test_case_count
    print(f'Running for {case_count} test cases.')
if args.timeout is not None:
    timeout = args.timeout
if args.test_case_count is None and args.timeout is None and not args.stop_after_first_violation:
    print('Please provide either -t <timeout> or -n <test case count> or --stop-after-first-violation')
    exit(1)
# do an extra test case because revizor only outputs the status at the *start* of each round
case_count += 1

try:
    os.mkdir(args.output)
except FileExistsError:
    pass

parallel_instances = args.parallel_instances
isa_spec = '/code/revizor-docker/src/x86/isa_spec/base.json'
configs = [config.strip() for config in args.configs.split(',')]
extra_args = [arg.strip() for arg in args.extra_args.split(',')]
input_count = args.input_count
processes = []
result_dirs = [args.output + f'/config{i}' for i in range(len(configs))]
if not args.stop_after_first_violation:
     extra_args.append('--nonstop')
python_call = 'python3.11'
if ("speclfb" in args.process.lower()):
    python_call = 'python3'
cmds = [
    [python_call, 'cli.py', 'fuzz', '-s', isa_spec, '-i', str(input_count), '-n', str(case_count),
        '-c', config, '-p', f'bench_{args.process}_config{i}_roundROUND', '--no-save-stats',
        f'--result-dir={result_dirs[i]}'] + extra_args
    for i, config in enumerate(configs)
]

def getcmdline(args: List[str]) -> str:
    ''' convert list of arguments to shell command '''
    # this doesn't handle '\n' etc. correctly, but it's only used for debugging anyways
    return ' '.join('%r' % arg for arg in args)

print('outputting to', args.output, '...')

class Result:
    # stdout of Revizor process, split into lines
    stdout: List[bytes]
    config: str
    cmdline: str
    time: float
    violations: int
    cases: int
    first_violation: Optional[float]
results = [[Result() for _ in range(parallel_instances)] for _ in range(len(configs))]

def get_violation_count(stdout: List[bytes]) -> Optional[int]:
    for line in reversed(stdout):
            violations = re.findall(r'Viol:(\d+)', line.decode())
            if violations:
                return int(violations[-1])
    return None
def get_case_count(stdout: List[bytes]) -> Optional[int]:
    for line in reversed(stdout):
            cases = re.findall(r'Progress:\s*(\d+)', line.decode())
            if cases:
                return int(cases[-1])
    return None
        
def main():
    for d in glob(f'debug_bench_{args.process}_*') + glob(f'/code/gem5-docker/m5out_bench_{args.process}_*'):
        print('removing', d)
        subprocess.run(['rm', '-rf', d])

    output_logs = []
    start_time = time.time()
    selector = selectors.DefaultSelector()
    for round in range(parallel_instances):
        for i, cmd in enumerate(cmds):
            cmd = [arg.replace('ROUND', str(round)) for arg in cmd]
            result = results[i][round]
            result.stdout = [b'']
            result.cmdline = getcmdline(cmd)
            result.config = configs[i]
            result.first_violation = None
            output_log = open(f'{args.output}/log_round{round}_config{i:03}', 'wb')
            output_log.write(f'command line: ${getcmdline(cmd)}\n'.encode())
            output_logs.append(output_log)
            process = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, preexec_fn=os.setpgrp)
            selector.register(process.stdout, selectors.EVENT_READ, len(processes))
            processes.append(process)
    while time.time() < start_time + timeout:
        if not args.verbose:
            timeout_string = args.timeout if args.timeout else 'inf'
            print(f'\r{int(time.time() - start_time)}/{timeout_string} seconds      ', end='')
            sys.stdout.flush()
        stdout_files = [None if process is None else process.stdout for process in processes]
        for key, _ in selector.select(timeout = 2):
            index = key.data
            round = index // len(configs)
            config_index = index % len(configs)
            new_stdout = os.read(key.fd, 4096)
            # separate latest stdout into lines
            lines = new_stdout.split(b'\n')
            # include newlines
            for i in range(len(lines) - 1):
                lines[i] += b'\n'
            result = results[config_index][round]
            stdout = result.stdout
            for line in lines:
                if not line: continue
                if stdout[-1].endswith(b'\n'):
                    # add new line
                    stdout.append(line)
                else:
                    # append to previous line (which was incomplete)
                    stdout[-1] += line
            if result.first_violation is None and get_violation_count(stdout):
                # found our first violation
                result.first_violation = time.time() - start_time
            if args.verbose:
                sys.stdout.flush()
                os.write(1, new_stdout)
            output_logs[index].write(datetime.now().strftime('\n[%Y-%m-%d %H:%M:%S]\n').encode())
            output_logs[index].write(new_stdout)
            output_logs[index].flush()
            if not new_stdout:
                # end of file reached - process has presumably exited
                selector.unregister(key.fileobj)
                processes[index].wait()
                if processes[index].returncode != 0:
                    print(f'!!! process {index} exited unexpectedly')
                    print(f'    return code: {processes[index].returncode}')
                    print(f'    command line: {getcmdline(cmds[config_index])}')
                processes[index] = None
                result.time = time.time() - start_time
        if all(process is None for process in processes):
            break
    end_time = time.time()
    for i, process in enumerate(processes):
        if process is not None:
            round = index // len(configs)
            config_index = index % len(configs)
            os.killpg(process.pid, signal.SIGKILL)
            results[config_index][round] = end_time - start_time
            processes[i] = None

    for c in range(len(configs)):
        for r in range(parallel_instances):
            results[c][r].violations = get_violation_count(results[c][r].stdout)
            results[c][r].cases = get_case_count(results[c][r].stdout)
    with open(f'{args.output}/info.txt', 'w') as outfile:
        def log(s=""):
            """Write to file and print to console."""
            outfile.write(s + '\n')
            print(s)

        def print_table(header: str, column_names: list, rows: list, column_formats: list):
            """Generalized function to print formatted tables with separators."""
            col_sep = " | "
            col_widths = [max(len(name), width) for name, width in zip(column_names, column_formats)]
            header_row = col_sep.join(f"{name:<{width}}" for name, width in zip(column_names, col_widths))
            separator_row = col_sep.join("-" * width for width in col_widths)

            log(f"\n{header}")
            log("=" * len(header))
            log(header_row)
            log(separator_row)
            for row in rows:
                log(col_sep.join(f"{str(item):>{width}}" for item, width in zip(row, col_widths)))
            log(separator_row)

        # Detailed results per config
        for i, config_results in enumerate(results):
            log("")
            log("=" * 120)
            log(f"Config {i}: {config_results[0].config}")
            log("")
            log("Command line: " + "\n" + config_results[0].cmdline.replace("'", ""))
            
            # Collect data
            times = [config_results[r].time for r in range(parallel_instances)] # in seconds
            total_system_time = sum(times)
            avg_wall_time = statistics.fmean(times)
            std_time = statistics.stdev(times) if len(times) > 1 else 0.0
            total_test_programs = sum([config_results[r].cases for r in range(parallel_instances)])
            total_test_cases = total_test_programs * input_count * 2  # *2 due to each input being boosted
            violation_counts = [config_results[r].violations for r in range(parallel_instances)]
            total_violations = sum(violation_counts)
            avg_violations = statistics.fmean(violation_counts)
            std_violations = statistics.stdev(violation_counts) if len(violation_counts) > 1 else 0.0
            first_violations: List[Optional[float]] = [config_results[r].first_violation for r in range(parallel_instances)]
            detected_violation = "NO"
            if total_violations > 0:
                detected_violation = "YES"
                
            log("")
            log(f"avg_wall_time: {avg_wall_time:.2f}")
            log(f"total_system_time: {total_system_time:.2f}")
            log(f"total_test_programs: {total_test_programs}")
            log(f"input_count: {input_count*2}")
            log(f"total_test_cases: {total_test_cases}")
            log(f"total_violations: {total_violations}")
            log(f"avg_violations: {avg_violations:.2f}")
            
            # Load YAML and Extract Contract Clauses
            config_file = config_results[0].config
            try:
                with open(config_file, 'r') as f:
                    config_data = yaml.safe_load(f)
                contract_observation = config_data.get("contract_observation_clause", "UNKNOWN").upper()
                contract_execution = "-".join(config_data.get("contract_execution_clause", ["UNKNOWN"])).upper()
                contract_clause = f"{contract_observation}-{contract_execution}"
            except Exception as e:
                print(f"Error reading config file {config_file}: {e}")
                contract_clause = "UNKNOWN-UNKNOWN"
            
            log("")
            # Following format from table 5
            log(f"contract_clause: {contract_clause}")
            log(f"detected_violation: {detected_violation}")
            log(f"avg_detection_time: {avg_wall_time/total_violations:.2f}")
            log(f"testing_throughput: {total_test_cases/avg_wall_time:.2f}")
            log(f"campaign_execution_time: {avg_wall_time:.2f}")

            # Combined Table for all metrics
            formatted_first_violations = [f"{first_violations[r]:.2f}"
                                          if first_violations[r] else "N/A"
                                          for r in range(parallel_instances)]
            combined_rows = [
                [r, f"{times[r]:.2f}", config_results[r].cases, violation_counts[r],
                 formatted_first_violations[r]]
                for r in range(parallel_instances)
            ]

            # Add summary rows at the end
            combined_rows.append(["Mean", f"{avg_wall_time:.2f}", "-", avg_violations, "-"])
            combined_rows.append(["Std Dev", f"{std_time:.2f}", "-", f"{std_violations:.2f}", "-"])

            print_table(
                header=f"Detailed Results - Config {i}",
                column_names=["Round", "Execution Time (s)", "Test Cases", "Violations Found", "First Violation (s)"],
                rows=combined_rows,
                column_formats=[8, 20, 12, 18, 22]
            )
            
            log("=" * 120)

try:
    main()
except KeyboardInterrupt:
    for process in processes:
        if process:
            os.killpg(process.pid, signal.SIGKILL)
    raise

