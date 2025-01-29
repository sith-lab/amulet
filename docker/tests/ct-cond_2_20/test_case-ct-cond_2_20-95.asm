.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 1591063601 
BSWAP ESI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RCX] 
ADC AL, -43 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -75 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], -50 
AND RCX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EDI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -33 # instrumentation
ADC EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], 5 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 114 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EBX 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], 72 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -99 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 19 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
