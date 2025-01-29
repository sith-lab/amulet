.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RBX] 
CMOVNB EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], CL 
MOVZX RDX, CX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
MOVSX RSI, SI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], BX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 506664268 
AND RAX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RAX] 
BSWAP RCX 
ADD DL, BL 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RDI 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 24 
CMP CL, CL 
INC BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -122 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DL 
SUB DX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -65 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 32 
SUB EAX, -1021132544 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
