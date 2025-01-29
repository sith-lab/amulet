.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EDX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], CX 
INC BL 
AND RSI, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -21 
INC CX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], 45 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RCX] 
BSWAP RDI 
ADC RDX, -106 
MOVSX EBX, BL 
INC EDX 
XCHG SI, DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 59 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
