.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB DI, AX 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], BL 
XCHG RAX, RDI 
SETLE SIL 
TEST AL, -27 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RCX 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
ADD SIL, -38 
TEST ESI, -784020047 
AND AX, 6 
CMOVNP RSI, RAX 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV DL, 9 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], BL 
CMOVLE RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
MOVSX EBX, SIL 
ADD ESI, -102 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RBX 
AND DIL, 40 
MUL EAX 
ADD EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], EBX 
ADD ECX, EDX 
JMP .bb_main.2 
.bb_main.2:
SUB EAX, 253563791 
AND RAX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 118 
XOR CL, DL 
SETNO CL 
SETNO DL 
OR EDI, 24 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], 74 
XOR DIL, -17 
SBB EAX, 91 
IMUL DIL 
AND RDX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDX], CX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], ECX 
OR DI, -59 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
