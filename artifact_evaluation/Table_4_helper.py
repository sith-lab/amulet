#!/usr/bin/env python3
import os
import pickle
import hashlib
import re
import sys

names = [
    ('baseline', 'Baseline (L1D+TLB)'),
    ('bp_state', 'BP state'),
    ('access_order', 'Memory access order'),
    ('bpredictions', 'Branch prediction order'),
]

if len(sys.argv) != 2:
    raise ValueError('Expected exactly one argument (program count)')
program_count = int(sys.argv[1])
input_count = 2 * 70
parallel_runs = 100

results = {x: set() for x, _ in names}
timings = {x: [] for x, _ in names}
dirs = {}

output_directory = '/code/revizor-docker/artifact_evaluation'

for name in sorted(os.listdir('.')):
    if not name.endswith('results'): continue
    if not any(name.startswith(f + '_') for f, _ in names): continue
    trace_format = name[:name.rindex('_')]
    for violation in sorted(os.listdir(name)):
        if 'bug' in violation: continue
        violation = f'{name}/{violation}'
        with open(f'{violation}/test_case_rvzr_input1.asm', 'rb') as f:
            program_id = hashlib.sha256(f.read()).digest()
        # very unlikely for the same program to be generated twice
        assert program_id not in results[trace_format]
        results[trace_format].add(program_id)
        dirs[program_id] = violation

timing_regex = re.compile('^Duration Elapsed: ([0-9]+)hrs-([0-9]+)mins-([0-9]+)secs$', flags=re.MULTILINE)
for name in sorted(os.listdir('logs')):
    if not any(name.startswith(f + '_') for f, _ in names): continue
    trace_format = name[:name.rindex('_')]
    with open(f'logs/{name}', 'rb') as f:
        size = os.stat(f.fileno()).st_size
        f.seek(size - 200)
        end_of_file = f.read(200)
    matches = timing_regex.findall(end_of_file.decode())
    assert len(matches) == 1
    match = matches[0]
    timings[trace_format].append(int(match[0]) * 3600 + int(match[1]) * 60 + int(match[2]))
for x in timings:
    timings[x].sort()
    timings[x] = sum(timings[x])/len(timings[x])
total = len(set.union(*results.values()))
# print(total)
with open(f'{output_directory}/Table_4_Results.tex', 'w') as tex, open(f'{output_directory}/Table_4_Results.txt', 'w') as txt:
    tex.write(r'''\documentclass{article}
\begin{document}
''')
    tex.write(f'(Generated from {program_count} test programs.)\n\n')
    tex.write(r'''
\begin{tabular}{p{3cm}|p{3cm}|p{3cm}|p{3cm}}\hline\small
{\bf Trace format}&{\bf Throughput (test cases / sec.)}&{\bf Fraction of total violations}&{\bf Fraction of violations covered by baseline trace}\\\hline
''')
    txt.write(f'uarch trace results for {program_count} test programs')
    for fmt, name in names:
        count = len(results[fmt])
        if count:
            baseline_frac=len(results['baseline'].intersection(results[fmt]))/count
        else:
            # zero violations with fmt, so baseline covers "all of them"
            baseline_frac = 1
        throughput = int((input_count*program_count*parallel_runs)/timings[fmt])
        tex.write(f'{name}&{throughput}&{count/total*100:.1f}\\%&{baseline_frac*100:.1f}\\%\\\\\\hline\n')
        txt.write(f'Trace format {name}:\n')
        txt.write(f'  Throughput: {throughput} test cases/sec\n')
        txt.write(f'  Fraction of total violations: {count/total*100:.1f}%\n')
        txt.write(f'  Fraction of violations covered by baseline: {baseline_frac*100:.1f}%\n')
    tex.write(r'''\end{tabular}
\end{document}
''')
