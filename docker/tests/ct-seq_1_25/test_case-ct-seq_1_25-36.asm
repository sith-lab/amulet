.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], -77 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 12 
CMP EDX, ESI 
IMUL DL 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -113 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDX] 
MOVSX ESI, SI 
SBB DI, -9 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], AX 
IMUL CX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RBX 
SBB EAX, -2144518936 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], 61 
AND RAX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RAX] 
MOVSX EDI, AL 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
