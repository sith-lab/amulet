.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDI] 
STD  
AND RBX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RBX] 
ADD DIL, 86 # instrumentation
CMOVBE SI, DI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RDX] 
SUB AX, DI 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], SIL 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 0 
LEA AX, qword ptr [RAX + RCX + 33348] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], -98 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 92 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -60 
SUB AL, 117 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
