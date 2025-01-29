.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -119 # instrumentation
CMOVBE ECX, ECX 
DEC RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RBX] 
AND AL, -12 
SETL BL 
STD  
CMPXCHG BL, BL 
XADD SI, AX 
JMP .bb_main.1 
.bb_main.1:
XADD RSI, RCX 
BSWAP EDX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -124 
AND RSI, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 95 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], RDX 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, 45 # instrumentation
CMOVLE RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -109 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RAX] 
CMOVS EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], BL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RSI] 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
TEST CL, CL 
AND SIL, -24 
SETL SIL 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], 64 
SBB RCX, -123 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDI 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOV DL, 49 
MOVSX RAX, DL 
MUL EAX 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], AL 
OR DX, 1 # instrumentation
CMOVNO RAX, RAX 
SETS CL 
CMOVNLE RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], DI 
CMOVNP RDX, RDI 
NEG AX 
SUB EAX, -304357178 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
