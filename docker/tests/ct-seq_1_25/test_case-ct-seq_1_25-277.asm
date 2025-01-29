.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL EDI 
STD  
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
ADD DIL, -52 # instrumentation
CMOVP EDI, ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RCX 
BSWAP RSI 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 34 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -30 
ADC DX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 77 
AND RCX, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RCX] 
INC RDX 
CMP DL, CL 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DL 
CMP RBX, -71 
CMOVNLE SI, DI 
ADC ESI, -106 
INC RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -16 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -105 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
