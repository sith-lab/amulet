.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDX 
CMOVP AX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], -113 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], AL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX RDI, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RSI] 
MOV DI, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDI] 
INC BL 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -53 
MUL AL 
AND RAX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RAX] 
ADD RAX, -1825132437 
MOVZX DI, DL 
SBB SIL, -56 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
