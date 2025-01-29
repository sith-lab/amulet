.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -34 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 88 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -1016991420 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -102 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], AX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -124 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RSI] 
ADC RDX, -66 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], -2 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RDI 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], ESI 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -33 # instrumentation
CMOVNB RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RCX] 
CMOVZ ESI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
