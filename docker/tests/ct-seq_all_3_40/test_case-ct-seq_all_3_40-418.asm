.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
XCHG RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDI] 
LEA AX, qword ptr [RCX + RAX + 8248] 
XOR RAX, RDX 
CMOVNZ EBX, EAX 
MOVZX EDX, CL 
INC EBX 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
SBB AL, 76 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], 68 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
BSWAP EBX 
SETNO CL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
IMUL RCX, RBX 
ADD DL, -2 
AND RSI, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RSI] 
LEA SI, qword ptr [RBX + RDX] 
CLD  
LEA ESI, qword ptr [RCX + RBX + 58581] 
CMOVS EBX, EBX 
MOVZX RAX, CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDI], -41 
AND RSI, 98 
TEST DL, -87 
CMOVLE RSI, RSI 
CMOVBE RSI, RDX 
JMP .bb_main.2 
.bb_main.2:
OR SIL, -29 
XCHG DI, DI 
AND RAX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RAX], -46 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], AL 
SETNP DIL 
IMUL EDI, ESI 
ADD DIL, -65 # instrumentation
SETNO AL 
SETL AL 
AND RCX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], SIL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EAX 
ADD SIL, 96 # instrumentation
CMOVNL EAX, EBX 
SETNL CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
