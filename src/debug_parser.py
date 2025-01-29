# Put this in revizor/src
# Parses 2 debug_*/one folders to get a "parsed_debug.txt"
# Args: relative path for debug*_/one, relative path for debug*_/one
# Ex. call with: python3 ./debug_parser.py debug_interference_mem_ctseq/one debug_interference_mem_archseq/one

# Checks if rdi init is the same for all instances of arch-seq/ct-seq

import os
import sys

def main():
  assert sys.argv[1] != "", "Debug 1 dir required"
  assert sys.argv[2] != "", "Debug 2 dir required"
  debug_1_dir = sys.argv[1]
  debug_2_dir = sys.argv[2]

  print("-----Finding rdi diffs in asms-----\n")
  rdi_diffs = find_rdi_diffs(debug_1_dir, debug_2_dir)
  print(f"\n {len(rdi_diffs)} asms differ in rdi")
  print(f"rdi_diffs: {rdi_diffs}")

  print("\n-----Finding diffs in d/iCacheTraces-----\n")
  trace_diffs = find_trace_diffs(debug_1_dir, debug_2_dir)
  print(f"\n {len(trace_diffs)} traces differ")
  print(f"trace_diffs: {trace_diffs}")

  return 0


def find_trace_diffs(debug_1_dir, debug_2_dir):
  # Get list of cache traces
  debug_1_filenames = os.listdir(debug_1_dir)
  debug_2_filenames = os.listdir(debug_2_dir)
  debug_1_traces = [x for x in debug_1_filenames if (("CacheTrace" in x) and (x[-3:]=="out"))]
  traces = [x for x in debug_2_filenames if (("CacheTrace" in x) and (x[-3:]=="out"))]
  assert len(debug_1_traces) == len(traces)
  for i in range(len(traces)):
    assert debug_1_traces[i] == traces[i], "Mismatching traces"

  # For each trace in both debug dirs, open it and check for equivalency
  # - If all matching, continue. Else add to trace_diffs
  trace_diffs = []
  for trace in traces:
    trace_1_path = f"{debug_1_dir}/{trace}"
    assert os.path.isfile(trace_1_path)
    debug_1_lines = get_trace_lines(trace_1_path)

    trace_2_path = f"{debug_2_dir}/{trace}"
    assert os.path.isfile(trace_2_path)
    debug_2_lines = get_trace_lines(trace_2_path)

    if len(debug_1_lines) != len(debug_2_lines):
      print(f"Trace {trace} differs across debug dirs!")
      trace_diffs.append(trace)
      continue

    for i in range(len(debug_1_lines)):
      if (debug_1_lines[i] != debug_2_lines[i]):
        print(f"Trace {trace} differs across debug dirs!")
        trace_diffs.append(trace)
        break
    else:
      print(f"Trace {trace} matches")
  
  return trace_diffs


def get_trace_lines(path):
  # print(f"Reading file: {path}") # DEBUG
  trace_lines = []
  with open(path, 'r') as file:
    for line in file:
      trace_lines.append(line)
  return trace_lines


def find_rdi_diffs(debug_1_dir, debug_2_dir):
  # Get list of asms
  debug_1_filenames = os.listdir(debug_1_dir)
  debug_2_filenames = os.listdir(debug_2_dir)
  debug_1_asms = [x for x in debug_1_filenames if x[-3:]=="asm"]
  asms = [x for x in debug_2_filenames if x[-3:]=="asm"]
  assert len(debug_1_asms) == len(asms)
  for i in range(len(asms)):
    assert debug_1_asms[i] == asms[i], "Mismatching asms"

  # For each asm in both debug dirs, open it and check for rdi equivalency (all lines with "RDI").
  # - If all matching, continue. Else add that asm to rdi_diffs
  rdi_diffs = []
  for asm in asms:
    asm_1_path = f"{debug_1_dir}/{asm}"
    assert os.path.isfile(asm_1_path)
    debug_1_lines = get_rdi_lines(asm_1_path)

    asm_2_path = f"{debug_2_dir}/{asm}"
    assert os.path.isfile(asm_2_path)
    debug_2_lines = get_rdi_lines(asm_2_path)

    assert len(debug_1_lines) == len(debug_2_lines)
    for i in range(len(debug_1_lines)):
      if (debug_1_lines[i] != debug_2_lines[i]):
        print(f"{asm} differs in rdi!")
        rdi_diffs.append(asm)
        break
    else:
      print(f"{asm} matches in rdi")

  return rdi_diffs


def get_rdi_lines(path):
  rdi_lines = []
  with open(path, 'r') as file:
    for line in file:
      if "rdi" in line:
        rdi_lines.append(line)
  return rdi_lines


main()