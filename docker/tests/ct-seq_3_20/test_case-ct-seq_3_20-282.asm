.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
NEG DIL 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RDI 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -5 # instrumentation
CMOVNO DI, CX 
AND RDI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -81 
ADD AL, -53 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -80 
AND RCX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RCX], -38 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], DX 
AND RDX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDX] 
XCHG DIL, CL 
MOVZX DI, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDI] 
SUB DIL, -71 
AND RAX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
