.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 73 # instrumentation
CMOVNL RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RDI 
CMOVNLE DI, BX 
MOV BL, 118 
IMUL CX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 11 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 121 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
ADD SIL, 22 # instrumentation
CMOVLE EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RSI] 
ADC CX, 1 
CMP CL, 81 
CMOVNB ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], CX 
ADC SIL, -65 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RBX] 
CMP RBX, 38 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RCX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RCX] 
NEG CL 
STC  
AND RAX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], ECX 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 111 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
