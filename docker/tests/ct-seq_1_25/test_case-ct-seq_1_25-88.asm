.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], -31 
ADD CX, CX 
BSWAP ESI 
CMOVZ AX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RAX] 
OR DL, 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RDI 
LAHF  
ADD AL, -70 
MOVZX DX, DL 
XCHG AL, AL 
CWDE  
MOVZX CX, BL 
CMP RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDX] 
INC AL 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
XCHG RSI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
