.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
CMOVNB CX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], -28 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BSWAP ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RSI] 
CMOVO RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
SUB AX, -16323 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], DI 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -75 # instrumentation
ADC RBX, -71 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EBX 
NEG BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
