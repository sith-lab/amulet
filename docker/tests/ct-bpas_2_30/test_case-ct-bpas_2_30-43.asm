.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
CMP ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RBX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
CMOVL RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
ADC BL, CL 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
CMOVZ EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MUL DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
ADD DIL, 37 # instrumentation
CMOVNP RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
SUB SI, 43 
CMOVL RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
SBB AX, 14797 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDX] 
MUL CL 
SUB BX, 57 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
