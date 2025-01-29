.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -66 
CMOVLE DI, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDI] 
XCHG RDI, RAX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
DEC DX 
NEG EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -5 
ADC SIL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RDX] 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], -67 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -77 
CMOVZ ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -31 
AND RSI, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], -46 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
