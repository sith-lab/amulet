.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -90 # instrumentation
CMOVNBE SI, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], -65 
AND RDX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -1 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], SI 
JNP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DL 
LEA RAX, qword ptr [RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -27263 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EAX 
AND RCX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -38 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EAX 
LOOPNE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -70 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
MOV SIL, DL 
SBB BX, DI 
CMOVZ RBX, RSI 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD AL, 75 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], CX 
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RBX] 
SUB AL, -125 
AND RBX, 0b1111111111111 # instrumentation
JMP .bb_main.5 
.bb_main.5:
MOV SIL, 79 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RCX] 
MOVZX ECX, CL 
DEC RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
