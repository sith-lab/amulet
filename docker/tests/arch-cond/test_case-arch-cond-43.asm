.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -76 # instrumentation
SETO BL 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], -24954 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RSI], BX 
CMOVNL RDX, RSI 
IMUL EBX, ECX, -128 
OR DX, 0b1000000000000000 # instrumentation
BSR DX, DX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RAX] 
ADD RSI, -125 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
XADD EDX, ESI 
CMOVS RDX, RDX 
XOR CX, CX 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], 7 
XOR AL, AL 
OR AX, DI 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
ADD DIL, -23 # instrumentation
SETNB DIL 
SBB SIL, 73 
NEG AL 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND BX, SI 
SETO DL 
ADD DI, -36 
AND RDX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RDI] 
CMOVO RAX, RCX 
IMUL RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RSI], RCX 
JMP .bb_main.4 
.bb_main.4:
SUB EAX, 1435905744 
AND RDX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
BSWAP ECX 
TEST RAX, -1496354476 
JZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], AL 
CMP AX, -2956 
ADC DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
