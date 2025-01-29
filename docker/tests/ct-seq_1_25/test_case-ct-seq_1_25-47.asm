.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
LEA RSI, qword ptr [RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
SBB CL, -41 
CMP DI, DI 
ADC RAX, 73 
BSWAP EDI 
LEA RCX, qword ptr [RCX + RSI + 12549] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RSI] 
ADC AL, BL 
SUB AL, -120 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -93 
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, 30 # instrumentation
CMOVBE RDI, qword ptr [R14 + RBX] 
LAHF  
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -118 
SUB CL, DL 
MOVZX RBX, CX 
AND RDX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
