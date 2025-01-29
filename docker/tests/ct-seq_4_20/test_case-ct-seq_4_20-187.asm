.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RSI 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DX 
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DI 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDI] 
SBB RDI, -107 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
IMUL EBX 
ADD DIL, 116 # instrumentation
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -96 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EBX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
