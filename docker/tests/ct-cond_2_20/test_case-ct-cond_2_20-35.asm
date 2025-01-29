.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ECX 
ADD EAX, -1178404402 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EAX 
AND RDX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDX] 
MUL RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RDX, RCX 
SUB AL, -118 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  
AND RDI, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RDI] 
MOVZX EDX, DL 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -97 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
ADC EAX, 671779287 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
