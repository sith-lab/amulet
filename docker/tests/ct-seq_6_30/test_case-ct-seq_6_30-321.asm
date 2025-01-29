.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], ESI 
MOVZX RSI, AX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
CMP CL, DL 
CMOVNL EBX, ESI 
NEG CL 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 24 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RCX] 
ADD SIL, 114 # instrumentation
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -109 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 96 
JLE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -17 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RBX 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
MUL AX 
CMOVNB RAX, RDX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], ESI 
SUB DX, -25 
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 499815172 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
