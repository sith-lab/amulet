.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 90 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 57 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RCX] 
ADC EAX, -1489421512 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
CMP EDX, -4 
ADD CX, DI 
CMOVZ RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
