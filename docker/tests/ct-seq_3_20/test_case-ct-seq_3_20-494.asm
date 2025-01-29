.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI], 37 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RSI] 
SUB SI, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RDX] 
SUB EAX, 87473112 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -9 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
CLD  
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], BX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -94 # instrumentation
SBB RCX, -115 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], AX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -127 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
