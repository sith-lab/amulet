.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -37 # instrumentation
CMOVNB ESI, EAX 
CMOVBE RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
BSWAP EAX 
ADD RAX, 89 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], -51 
CLD  
CMOVNBE EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], AL 
STC  
MOVZX DI, DIL 
XOR RAX, 2000873970 
AND RDI, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RDI] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], -375888648 
IMUL EAX 
XOR ESI, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], ESI 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DX 
XOR EBX, 28 
CMP BL, 15 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], 71 
CMP AX, 29855 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 68 # instrumentation
SETNZ AL 
AND AL, 125 
SUB ECX, -65 
MUL BL 
SUB AL, 43 
IMUL DL 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], -105 
SETNZ AL 
CMP AX, CX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], ESI 
SUB RSI, 85 
CMOVNO RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
