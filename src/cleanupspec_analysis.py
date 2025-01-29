#!/usr/bin/env python3.11
import sys
from typing import List
import hashlib

manual_decisions = {
    '06ad825183d60a1f3b6d94a086cf8406f55f7323a3f6672170a194ead0320f15':
        # Reference input speculatively accesses 0x39bc which causes a split request over 0x3980/0x39c0.
        # This isn't cleaned up so both 0x3980, 0x39c0 are in the cache tags.
        # But the primer input independently speculatively accesses 0x3980, so we don't automatically
        # detect this as a split-request-not-cleaned.
        'Split Requests Not Cleaned',
    '77e729a612e2cdd214126ae5ffdf19192f496664245db9c3e06b14cfbbaf3f1f':
        # Same as above
        'Split Requests Not Cleaned',
    '328041e7945d653439f67f4e438734b47c40005d540bab010b397ab59553fb2a':
        # 0hrs-05mins-01secs-959599us
        # Same as above
        'Split Requests Not Cleaned',
    '14467da3a922adee06fea40fca66295da5d9a7af6346030bff3267772e5c7d49':
        # 0hrs-05mins-28secs
        # Same as above
        'Split Requests Not Cleaned',
    'b582f2b079cb3f69a4e163e7271ef44eb42a2b9cbd10f4fdc9ea9b0b3b6f20fd':
        # 0hrs-06mins-20secs
        # Same as above
        'Split Requests Not Cleaned',
    'b2f681036daeaac5c527b73308e6a1fbdacc9e1f0fafee1bff923bb59ffccb6a':
        # 0hrs-08mins-08secs
        # Same as above
        'Split Requests Not Cleaned',
    'e8335b1fa2741abf1043a90702ef66e9d71e3420a75e58d2ea0e23d3af49b801':
        # 0hrs-03mins-30secs-637468us
        # Speculative split load, but one half gets cleaned up because of another speculative load.
        'Split Requests Not Cleaned',
    '174ad38a231d8e2563b05f3a0da09bab2c2ae516e4832eee55d855a8ed13f37a':
        # 0hrs-08mins-16secs
        # same as above
        'Split Requests Not Cleaned',
    'eec66d92a5fb8aeb452c183f689048fdcd2afc7b7b620af1926e9a85a4d5abba':
        # 0hrs-03mins-34secs
        # Also a split load, but only one half ends up in the tags for some reason.
        # Not sure why, since there's no cleanup request for the other half and it does appear in the protocol trace. 
        'Split Requests Not Cleaned',
    '352f78c328b3634e211ee89a5ac51cba8dabb80a4c8e7e883772a2e4143cfa5d':
        # 0hrs-06mins-29secs-819372us
        # Same as above
        'Split Requests Not Cleaned',
    'b3072cde55a2b60cbdaaeda1072d7c5b52fa2a96de0bda820a0c5305a80a0f25':
        # 0hrs-04mins-26secs
        'Combination of "Split Requests Not Cleaned" and "Speculative Store Not Cleaned"',
    'd263b79b872c327d1ce0262ff9e5f5d79e2660cd5fd6da29b2c0680de8931de4':
        # 0hrs-06mins-15secs
        'Combination of "Split Requests Not Cleaned" and "Speculative Store Not Cleaned"',
    'a1818b85643b77f8366185e23d4b474662f3c1cd5ce650af4dea282ac497bd57':
        # 0hrs-09mins-23secs
        'Combination of "Split Requests Not Cleaned" and "Speculative Store Not Cleaned"',
    '8435e7781cc3a01b06cc02606fa0e7cf42e5f73737012a3c08d7c74ee229ed7d':
        # 0hrs-10mins-49secs
        'Combination of "Split Requests Not Cleaned" and "Speculative Store Not Cleaned"',
    'ce91b1f3e804abeb1f2227484451b402f97084d9dbc20121d3171b474da365be':
        # 0hrs-11mins-18secs
        'Combination of "Split Requests Not Cleaned" and "Speculative Store Not Cleaned"',

    '5bf2cf324d5ebefe612187726608134206b1aef57f5cb7058b345da9c7e96d5f':
        'Difference in non-speculative requests?',
    '4e9eb0bca1987cfcbd37840ab586f21f814ba04a0b0210e435d91fc908792b0f':
        'Difference in non-speculative requests?',
    '1bdf929c68409c189e3f408c0d082ea468d92ef6c2288d4542f9517801357668':
        'Difference in non-speculative requests?',
    'bf4813e51c01900ca262f7e405416326bfb13987eed50e5a7c7ae943820015f0':
        # 0hrs-09mins-34secs
        'Difference in non-speculative requests?',
    'ed468cf794d532fa443a41be63065b7a61adcac6f49e362c7543c1d63ac8bd90':
        # 0hrs-12mins-20secs
        'Difference in non-speculative requests?',
}

assert len(sys.argv) == 2, 'Please provide path to violation'
violation = sys.argv[1]
with open(f'{violation}/protocol-trace-reference.txt', 'r') as f:
    reference_trace = f.read().split('\n')
with open(f'{violation}/protocol-trace-primer.txt', 'r') as f:
    primer_trace = f.read().split('\n')
with open(f'{violation}/cache_tags_1', 'r') as f:
    reference_tags_raw = f.read()
    reference_tags = reference_tags_raw.split('\n')
with open(f'{violation}/cache_tags_2', 'r') as f:
    primer_tags = f.read().split('\n')
def get_cache(tags: List[str], which: str) -> List[int]:
    addresses = tags[tags.index(f'[system.ruby.l1_cntrl0.L1{which}cache]') + 1]
    assert addresses.startswith('addresses=')
    return {int(x) for x in addresses.split('=')[1].split(' ')}
reference_icache = get_cache(reference_tags, 'I')
reference_dcache = get_cache(reference_tags, 'D')
primer_icache = get_cache(primer_tags, 'I')
primer_dcache = get_cache(primer_tags, 'D')
if reference_dcache == primer_dcache:
    assert reference_icache != primer_icache, f'{violation} is not a violation?'
    print('difference in ICache caused violation - UnXpec variant?')
    exit(0)

if reference_icache != primer_icache:
    print('differences in both ICache and DCache - combination of multiple vulnerabilities?')
    exit(0)

reference_minus_primer = reference_dcache - primer_dcache
primer_minus_reference = primer_dcache - reference_dcache

def is_rwm_bug() -> bool:
    # if len(reference_dcache) != len(primer_dcache):
    #    return False
    for primer_extra in primer_minus_reference:
        primer_stores = [line for line in primer_trace if f'line 0x{primer_extra:x}] ST' in line]
        reference_stores = [line for line in reference_trace if f'line 0x{primer_extra:x}] ST' in line]
        if len(primer_stores) == 0 or len(reference_stores) != 0:
            return False
    for reference_extra in reference_minus_primer:
        reference_stores = [line for line in reference_trace if f'line 0x{reference_extra:x}] ST' in line]
        primer_stores = [line for line in primer_trace if f'line 0x{reference_extra:x}] ST' in line]
        if len(reference_stores) == 0 or len(primer_stores) != 0:
            return False
    return True

def is_split_req() -> bool:
    for diff in [reference_minus_primer, primer_minus_reference]:
        if len(diff) % 2 != 0:
            return False
        for tag in diff:
            if not any(neighbour in diff for neighbour in [tag - 0x40, tag + 0x40]):
                return False
    return True

def is_too_much_cleaning_with(extra_tag: int, trace1: List[str], trace2: List[str]):
    return any(f'line 0x{extra_tag:x}] LD' in line for line in trace2) \
        and any(f'line 0x{extra_tag:x}] CLEANUP' in line for line in trace2)

def is_too_much_cleaning() -> bool:
    if len(reference_minus_primer) + len(primer_minus_reference) != 1:
        return False
    if len(reference_minus_primer) == 1:
        return is_too_much_cleaning_with(list(reference_minus_primer)[0], reference_trace, primer_trace)
    if len(primer_minus_reference) == 1:
        return is_too_much_cleaning_with(list(primer_minus_reference)[0], primer_trace, reference_trace)
    return False

def report_cause(cause: str):
    print(f'{violation}: {cause}')
    exit(0)

if is_rwm_bug():
    report_cause('Speculative Store Not Cleaned')
if is_split_req():
    report_cause('Split Requests Not Cleaned')
if is_too_much_cleaning():
    report_cause('Too Much Cleaning')


tags_hash = hashlib.sha256(reference_tags_raw.encode()).hexdigest()
if tags_hash in manual_decisions:
    report_cause(manual_decisions[tags_hash])

report_cause('Other')
