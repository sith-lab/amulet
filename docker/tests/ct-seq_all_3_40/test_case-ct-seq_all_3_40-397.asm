.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EAX, -1668520044 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
MOV BX, -18420 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], -19 
NOT RAX 
AND CL, BL 
CMOVO DI, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], BL 
CMOVNB EBX, ECX 
XCHG DL, AL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX EBX, CL 
MOVZX RSI, AX 
XADD DL, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RCX 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], -36 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RCX], -45 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
INC RSI 
XCHG BX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -9 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RCX] 
ADD RAX, -71296373 
MOVSX SI, CL 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RSI] 
ADD RAX, 465158868 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RSI] 
ADD AL, BL 
BSWAP EDI 
CMOVO RDI, RCX 
IMUL RCX 
XOR CX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RAX] 
MUL AL 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], AX 
CMOVL DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
