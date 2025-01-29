.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RCX 
MOV CL, -119 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], SI 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 3 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RBX 
AND RSI, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], 30 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], -124 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RSI] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
