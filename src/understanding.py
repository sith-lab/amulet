import subprocess
import os
import pandas as pd
from pwn import ELF
from collections import Counter
import sys

GEM5_PATH = os.environ.get('G5_PATH', '/home/arpitgogia/Lab/gem5')
REVIZOR = os.environ.get('REVIZOR', '/home/arpitgogia/Lab/revizor/')
BRANCH_ADDR = sys.argv[1]

GEM5_OUTPUT = []

for line in open('{}/out'.format(REVIZOR)):
    if 'Inputs' in line and 'per' not in line:
        eqcs = eval(line.split('Inputs ')[1].split(']')[0] + ']')
        GEM5_OUTPUT.append(eqcs)



class CacheTrace:
    def __init__(self, id, cmd, addr, size, flags, tick, pc):
        self.id = id
        self.tick = tick
        self.cmd = cmd
        self.flags = flags
        self.addr = addr
        self.size = size
        self.pc = pc

    def addr_hex(self):
        return hex(self.addr)

    def pc_hex(self):
        return hex(self.pc)

    def __str__(self):
        return '.'.join(map(str, [self.id, self.tick, self.cmd, self.flags, self.addr, self.size, self.pc]))

    def __repr__(self):
        return str(self)


def cache_trace(index, input_seed):
    def get_trace(fn):
        txt_name = fn[:-3] + '.txt'
        subprocess.run([
            'python3', 
            '/home/arpitgogia/Lab/gem5/util/decode_packet_trace.py'.format(GEM5_PATH), 
            '{}/{}'.format(GEM5_PATH, fn),
            '{}/{}'.format(GEM5_PATH, txt_name)
            ], stdout=subprocess.DEVNULL)
        
        result: [CacheTrace] = []
        txt_f = open('{}/{}'.format(GEM5_PATH, txt_name))
        for line in txt_f:
            parts = line.split(',')
            result.append(
                CacheTrace(
                    int(parts[0]),
                    parts[1],
                    int(parts[2]),
                    int(parts[3]),
                    int(parts[4]),
                    int(parts[5]),
                    int(parts[6])
                ))
        return sorted(result, key=lambda x: x.tick)

    
    return get_trace('dCacheTrace_{}_{}.gz'.format(index, input_seed)), get_trace('iCacheTrace_{}_{}.gz'.format(index, input_seed))

def get_instruction(binary, address, bytes):
    try:
        return binary.disasm(int(address), bytes)
    except:
        print("Unable to read instruction @ {}".format(address))
        return ''

def cache_access_table(seeds: [int]):
    dtable = {}
    itable = {}

    all_d_addresses = []
    all_i_addresses = []

    for seed in seeds:
        dtrace, itrace = cache_trace(0, seed)
        all_d_addresses = all_d_addresses + list(map(lambda x: x.addr, dtrace))
        all_i_addresses = all_i_addresses + list(map(lambda x: x.addr, itrace))

    all_d_addresses = set(all_d_addresses)
    all_i_addresses = set(all_i_addresses)

    dpresence_table = {}
    ipresence_table = {}

    for seed in seeds:
        dpresence_table[seed] = [False] * len(all_d_addresses)
        ipresence_table[seed] = [False] * len(all_i_addresses)

    for i, addr in enumerate(all_d_addresses):
        for seed in seeds:
            dtrace, itrace = cache_trace(0, seed)
            for trace in dtrace:
                if addr == trace.addr:
                    dpresence_table[seed][i] = True

    for i, addr in enumerate(all_i_addresses):
        for seed in seeds:
            dtrace, itrace = cache_trace(0, seed)
            for trace in itrace:
                if addr == trace.addr:
                    ipresence_table[seed][i] = True

    return pd.DataFrame(data=dpresence_table, index=all_d_addresses), pd.DataFrame(data=ipresence_table, index=all_i_addresses)

for eqcs in GEM5_OUTPUT:
    continue

    print()
    print("____ EQCS: {} ____".format(eqcs))
    print()

    seeds = list(map(lambda x: x[1], eqcs))

    dcache_access_table, icache_access_table = cache_access_table(seeds)   

    # print(dcache_access_table)
    # print(icache_access_table)

    d_table = {}
    i_table = {}

    seed_dtrace = {}
    seed_itrace = {}

    dtrace_set = set()
    itrace_set = set()

    branch_table = {}
    branch_inst_table = {}

    for pair in eqcs:
        seed = pair[1]
        # print("===== Seed : {} =====".format(seed))

        b = ELF('{}/test_case_0_{}.out'.format(REVIZOR, seed), checksec=False)

        temp = cache_trace(0, seed)
        dcache_trace = temp[0]
        icache_trace = temp[1]

        seed_dtrace[seed] = dcache_trace
        seed_itrace[seed] = icache_trace

        dtrace_set.add(str(dcache_trace))
        itrace_set.add(str(icache_trace))

        for t in dcache_trace:
            dte = d_table.get(seed, {})
            dte[t.addr_hex()] = dte.get(t.addr_hex(), 0) + 1 
            d_table[seed] = dte

        for t in icache_trace:
            ite = i_table.get(seed, {})
            ite[t.addr_hex()] = ite.get(t.addr_hex(), 0) + 1
            i_table[seed] = ite

        log = open('{}/log_0_{}.out'.format(GEM5_PATH, seed))

        for t in dcache_trace:
            if t.cmd == 'r':
                for line in log:
                    if 'Squashing' in line and t.addr_hex() in line:
                        print('Cache read at {} was squashed, possible speculative execution'.format(t.addr_hex()))
        
        log.seek(0)
        for line in log:
            if 'system.cpu.branchPred' in line and 'Branch predictor predicted' in line:
                pc = line.split()[10].split('=>')[0][1:]
                pred = int(line.split()[7]) 
                entry = branch_table.get(pc, {})
                entry[pair[0]] = entry.get(pair[0], []) + [pred]
                branch_table[pc] = entry
                branch_inst_table[pc] = get_instruction(b, int(pc, 16), 2)

    if len(itrace_set) != 1:
        print("Found unique itraces")

    if len(dtrace_set) != 1:
        print("Found unique dtraces")

    for seed, dtrace in seed_dtrace.items():
        for t in dtrace:
            if t.cmd == 'r':
                print(seed, ":", t, ":", get_instruction(ELF('{}/src/test_case_0_{}.out'.format(REVIZOR, seed), checksec=False), t.pc, 4))

    s = set()
    for seed, ct in d_table.items():
        s.add(str(ct))
        if len(s) != 1:
            print(f"Seed {seed} has a different d trace in its eqs")
            print(d_table)
            break

    s = set()
    for seed, ct in d_table.items():
        s.add(str(ct))
        if len(s) != 1:
            print(i_table)
            print(f"Seed {seed} has a different i trace in its eqs")
            break

    if len(branch_table) != 1:
        print("Anomaly in branch addresses")
        print(branch_table)
        for addr, inst in branch_inst_table.items():
            print(inst)

import json

table = json.load(open('{}/table.json'.format(REVIZOR)))
ctrace_to_htrace = {}

for ctrace, measurements in table.items():
    for m in measurements:
        x = ctrace_to_htrace.get(ctrace, set())
        x.add(m['htrace'])
        ctrace_to_htrace[ctrace] = x

for ctrace, htraces in ctrace_to_htrace.items():
    if len(htraces) > 1:
        print("CTrace: {} seems to be the violating scenario.".format(ctrace))
        measurements = sorted(table[ctrace], key=lambda x: x['htrace'])
        htrace_to_inputs = {}
        for m in measurements:
            htrace_to_inputs[m['htrace']] = htrace_to_inputs.get(m['htrace'], []) + [m['input']]

        print("Checking the data cache traces for uniqueness")

        unique_dtraces = {}
        instructions = set()
        mem_adds = set()

        for htrace, inputs in htrace_to_inputs.items():
            for i in inputs:
                dtrace, itrace = cache_trace(0, i)
                for t in dtrace:
                    if t.cmd == 'r':
                        key = i
                        x = unique_dtraces.get(key, set())
                        x.add(str(t))
                        unique_dtraces[key] = x

            print(f"HTrace: {htrace}\tInputs:{inputs}")
            for i in inputs:
                try:
                    print(f"\tInput: {i} DTrace: {unique_dtraces[i]}")
                    for d in unique_dtraces[i]:
                        pc = int(d.split('.')[6])
                        instruction = get_instruction(ELF('{}/test_case_0_{}.out'.format(REVIZOR, i), checksec=False), pc, 4)
                        print('\t\tInstruction @ {} : {}'.format(pc, instruction))
                        instructions.add(pc)
                        mem_adds.add(int(d.split('.')[4]))
                except KeyError:
                    dtrace, _ = cache_trace(0, i)
                    print(f"\tIgnoring input: {i}, dtrace: {dtrace}")

                logs = open('{}/log_0_{}.out'.format(GEM5_PATH, i))
                for log in logs:
                    if 'Branch predictor predicted' in log and BRANCH_ADDR in log:
                        print(f"\t\tBranch prediction for {BRANCH_ADDR}: {log.split('Branch predictor predicted ')[1][0]} ")

# print(group_htrace)