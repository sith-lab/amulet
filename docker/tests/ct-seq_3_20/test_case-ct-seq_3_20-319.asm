.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RBX] 
CMOVP SI, AX 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RAX] 
CMOVNBE DI, BX 
ADC RSI, -71 
AND RDI, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -7 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 44 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
