.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL RCX 
ADD SIL, 13 # instrumentation
SETP BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -89 
CMOVZ DI, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], -13 
SBB AL, -88 
SBB EAX, -30513545 
SETLE DL 
ADC RCX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -29 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RCX] 
MOV EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RCX] 
SBB AX, -32675 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
SETO BL 
OR RSI, 53 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDX], EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 104 
ADD DL, 121 
AND RCX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
MOVZX SI, DL 
CMOVO EDX, EBX 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 110 
DEC DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -108 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
XCHG EAX, ECX 
BSWAP RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
INC DI 
CMOVS RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RSI 
CMOVNS SI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
