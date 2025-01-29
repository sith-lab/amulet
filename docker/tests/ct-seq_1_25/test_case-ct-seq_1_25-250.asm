.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], BL 
STC  
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EBX 
OR DI, 0b1000000000000000 # instrumentation
BSR DI, DI 
MOV RDX, 3530906047820169568 
AND RBX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RBX] 
SBB ECX, -118 
ADD SI, BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 115 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 124 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
MOV EDI, EBX 
CMP ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RDI] 
CMP AX, -71 
MUL EDI 
MUL EDX 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RCX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RCX] 
CMOVBE CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
