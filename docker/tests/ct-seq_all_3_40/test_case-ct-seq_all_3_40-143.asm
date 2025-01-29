.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RBX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], 103 
MOV SI, -21334 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], RSI 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -35 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX] 
SBB AL, -40 
AND RBX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RBX] 
ADD SIL, 87 # instrumentation
CMOVL DX, CX 
AND RBX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RBX] 
SETNO BL 
CMOVNBE RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RCX] 
NOT AX 
AND RAX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RAX] 
ADD BL, -68 
MOVSX EDX, CL 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], -19 
TEST DI, 5543 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 51 # instrumentation
SETNLE DL 
TEST DI, 4721 
SBB SIL, -59 
ADD AL, BL 
SUB RAX, -9 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 1994134722 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RDI] 
SBB DX, 66 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
OR DX, 0b1000000000000000 # instrumentation
BSR CX, DX 
NOT AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RSI] 
TEST DL, 32 
MOV AL, SIL 
AND RBX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], SI 
CMOVZ RCX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
