.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -88 
XCHG RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -78 # instrumentation
CMOVLE ESI, ESI 
ADD RDX, RBX 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RDI 
MOVZX DX, BL 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], DX 
ADC BX, 101 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RAX] 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RBX 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], -6 
AND RCX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RCX] 
CMOVBE RAX, RSI 
CMOVNLE ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
