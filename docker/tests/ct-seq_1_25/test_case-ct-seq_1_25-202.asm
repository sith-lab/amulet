.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
CMOVS EDX, EDX 
CMC  
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RBX] 
ADD RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], 59 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], -67 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -88 
AND RDX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RCX 
ADD CL, SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RDI 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -72 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
SBB DIL, 103 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
