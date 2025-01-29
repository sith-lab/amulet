.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RAX] 
CMOVNO CX, AX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RBX] 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
ADD BL, SIL 
MOV ECX, -497069093 
DEC EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RSI] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDX] 
SUB BL, AL 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
CMOVO CX, DI 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
