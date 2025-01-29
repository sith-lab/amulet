.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EBX 
MOV DL, 38 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 25 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 561356203 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RDX] 
ADD DIL, 101 # instrumentation
SBB EAX, 411076324 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -85 
CLC  
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RDI 
IMUL DX, BX 
XCHG DL, DIL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -48 
CMOVO BX, DI 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -118 
CMOVZ RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -10 
AND RCX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 58 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RDX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RBX] 
ADD SIL, 57 # instrumentation
CMOVLE RDX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
