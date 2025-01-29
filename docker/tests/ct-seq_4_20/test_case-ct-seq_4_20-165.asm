.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
ADD DIL, -126 # instrumentation
CMOVNBE RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -7 
SBB DX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], AL 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RBX] 
ADD SIL, 12 # instrumentation
ADC RDX, RBX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RDI 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RSI] 
ADD AL, 77 
AND RBX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RCX] 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
