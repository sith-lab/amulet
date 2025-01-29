.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -125 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RDX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 65 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RDI 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 35 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 11 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RCX] 
STC  
JMP .bb_main.2 
.bb_main.2:
IMUL DL 
ADC AX, 18588 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EAX 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ECX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
