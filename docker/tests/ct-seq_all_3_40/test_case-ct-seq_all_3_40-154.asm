.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RBX] 
CMPXCHG CL, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
XCHG DX, AX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RSI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
CWD  
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], DX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
IMUL CX 
ADD SIL, -8 # instrumentation
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -35 # instrumentation
INC CX 
NOT EDI 
ADC AL, CL 
ADC EAX, -1923029744 
SBB RSI, RCX 
CMPXCHG BX, CX 
SETNO AL 
ADD RDX, 79 
SUB RAX, -1345958595 
XADD RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RBX] 
SBB BL, 60 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], BL 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 98 # instrumentation
CMOVNZ EDX, ESI 
CMOVBE EDI, EBX 
ADC DX, -108 
AND RBX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RBX] 
ADC AX, 17309 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], 82 
SBB RAX, 119 
CLD  
IMUL EDX 
ADD BL, BL 
IMUL AX, AX 
XOR BL, 9 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
MOVZX EDX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
