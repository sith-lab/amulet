.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
IMUL RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], 30 
MOVSX AX, BL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RDX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDX] 
NOT RBX 
SUB RDX, 17 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RSI 
ADC CX, BX 
AND RAX, -206674158 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 20 # instrumentation
SETNLE CL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EBX 
IMUL RDX 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -107 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDX] 
CMOVNLE RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], SI 
SETBE DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], -18 
OR EAX, -117 
AND RDI, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -112 # instrumentation
CMOVS EDX, EDX 
CMOVO EAX, ECX 
ADC AL, 32 
CMOVO EDI, EAX 
CMOVNL EAX, EDX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
SETNB BL 
MOVSX SI, CL 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
XCHG RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDI] 
XCHG EDI, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RAX] 
LEA ESI, qword ptr [RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
