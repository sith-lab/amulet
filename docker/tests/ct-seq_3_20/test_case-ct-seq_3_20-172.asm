.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX], -125 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RCX 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -110 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -102 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RAX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -13 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDI] 
INC CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
