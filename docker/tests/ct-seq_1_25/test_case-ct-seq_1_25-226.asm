.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -109 # instrumentation
CMOVNL DI, CX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 57 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], SI 
MUL DL 
ADC CL, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -105 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
INC RAX 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 108 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -68 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
MOVZX DI, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
SUB AL, 57 
AND RSI, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RSI] 
NEG ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
IMUL RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
