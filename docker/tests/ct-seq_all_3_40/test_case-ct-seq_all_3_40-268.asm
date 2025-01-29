.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BL, DL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -119 
CMOVNS ECX, ECX 
MUL RCX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], DX 
SUB DX, 83 
CMOVNBE EDI, EDX 
SETNL DL 
CMOVB CX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 104 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -38 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
AND RAX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RAX] 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RSI] 
ADD AX, 26620 
MOV AL, CL 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
SUB DI, 61 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], EAX 
CMP EAX, -1980186521 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], BL 
AND RSI, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RSI] 
OR AX, 0b1000000000000000 # instrumentation
BSF SI, AX 
AND RSI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RSI] 
XOR AX, 27296 
CMOVNS AX, DX 
MOV DX, -14499 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], CX 
STD  
OR AL, 48 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RBX 
TEST DIL, CL 
OR DL, 1 # instrumentation
MOVSX EBX, DX 
AND RDX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
