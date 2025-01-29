.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RCX] 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -53 
ADD AX, 9330 
ADC AL, -24 
AND RSI, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RSI] 
CMP RDX, -69 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
ADD SIL, 56 # instrumentation
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
INC EAX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ECX 
SUB EAX, -1088306086 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -86 
IMUL SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RSI] 
MOVZX ESI, BL 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
CMOVNB SI, CX 
MOVSX RAX, AX 
MOVSX EDI, DL 
SUB AL, 35 
CMC  
MOV ECX, EDX 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP AX, 5369 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], DI 
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
