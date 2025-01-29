.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
ADD DIL, 75 # instrumentation
CMOVNBE DX, DI 
CMP EBX, 63 
SUB RAX, 1293059711 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -119 # instrumentation
SBB DL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RCX] 
ADC BX, AX 
AND RCX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RCX] 
ADD SIL, 30 # instrumentation
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB RAX, 1578276071 
CMOVNP CX, SI 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 17 
NEG DX 
ADD SIL, -62 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RDI 
JMP .bb_main.3 
.bb_main.3:
OR DL, 1 # instrumentation
SUB ESI, ECX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ECX 
SUB AX, -20065 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RCX] 
CMP EBX, ECX 
MUL SIL 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EBX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 18 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RCX 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RAX 
CMOVNL EDX, ECX 
CMOVZ RCX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
