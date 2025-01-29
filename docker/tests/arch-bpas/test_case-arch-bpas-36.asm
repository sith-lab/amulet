.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], AX 
CMP RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], BX 
AND RSI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RSI], -52 
ADD SIL, 78 # instrumentation
CMOVNZ RSI, RSI 
OR DL, 1 # instrumentation
TEST RAX, 669101237 
AND RDI, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
IMUL AX 
MUL DL 
NOT EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 82 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 83 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RSI], 51 
ADD DIL, -109 # instrumentation
CMOVNZ DI, BX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], BL 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], AL 
CMOVNLE CX, CX 
SUB DX, -118 
XCHG RCX, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RDI] 
AND AX, 68 
TEST SIL, 38 
CMP EDI, -61 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], BL 
MOV AL, BL 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], 49 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
