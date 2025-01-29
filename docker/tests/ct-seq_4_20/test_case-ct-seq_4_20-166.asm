.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RCX 
AND RDX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -13 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
ADD SIL, 119 # instrumentation
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 80 # instrumentation
CMOVBE CX, AX 
AND RBX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RBX], -17 
MOVSX EDX, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 14 # instrumentation
ADC BL, 126 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], ESI 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
