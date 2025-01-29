.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP AX, 32 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], -122 
LEA DI, qword ptr [RDI + RCX + 62600] 
CLD  
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ESI 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 20 
AND RBX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RBX] 
CMOVNLE EDX, ECX 
SBB AX, 6379 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], AL 
INC DL 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
ADD AL, -38 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
ADC AL, BL 
ADC ESI, EDI 
SUB RAX, -2144882062 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DL 
IMUL RDI, RBX, 64 
ADD SIL, -76 # instrumentation
CMOVNL RDX, RDI 
MUL RDI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
