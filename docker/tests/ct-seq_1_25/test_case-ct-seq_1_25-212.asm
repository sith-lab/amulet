.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP AX, -43 
AND RCX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
CMOVNLE RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 98 
CMOVL RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RBX] 
MOV DX, 20021 
CMC  
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
ADD SIL, -13 # instrumentation
ADC DL, 56 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -79 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 82 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -52 
MOVSX RSI, DIL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -56 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RDI 
DEC CX 
ADC RAX, -364474906 
CMOVBE AX, CX 
INC CX 
SBB AL, 90 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 60 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
