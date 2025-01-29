.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], ECX 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
INC ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], CL 
IMUL DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDI] 
ADD CL, 126 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EAX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 69 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -112 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
