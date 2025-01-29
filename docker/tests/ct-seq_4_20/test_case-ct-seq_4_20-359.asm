.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RBX 
AND RCX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RCX 
CMOVNP EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDI] 
XCHG RCX, RDX 
NEG CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RCX] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RAX] 
SUB SIL, AL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RSI], 68 
ADD SIL, -3 # instrumentation
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -39 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
