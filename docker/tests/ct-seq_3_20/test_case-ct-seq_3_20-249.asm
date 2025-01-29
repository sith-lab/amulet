.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -57 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 97 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
XCHG ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], -45 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 31 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 743076120 
CMOVNB BX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
