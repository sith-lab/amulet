.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RSI] 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
INC ECX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -26 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -82 # instrumentation
CMOVNP EDI, EAX 
DEC ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -9 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
ADD RCX, RDI 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RBX] 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RAX] 
SUB CX, DX 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
SUB AL, -59 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 100 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RCX] 
CMOVNO RDX, RDX 
DEC CX 
OR DL, 1 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
