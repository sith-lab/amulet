.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RBX] 
MOVSX ECX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -64 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 110 
IMUL BX 
AND RBX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RBX] 
SBB EBX, -125 
ADD BX, BX 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
CMOVZ BX, BX 
ADD AL, -80 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -72 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
