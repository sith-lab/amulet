.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 116492320 
OR RAX, 1844254565 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RAX] 
CMPXCHG DL, BL 
SETNL BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 115 
XCHG DI, AX 
ADC RAX, -1492400397 
CMP EBX, ESI 
MOVSX RBX, CL 
SETB DL 
NEG EAX 
CMPXCHG CX, DI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX RCX, AX 
XOR EAX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDX] 
CMP DIL, DL 
ADD RDX, -122 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RDI 
CLC  
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
ADD DIL, 53 # instrumentation
CMOVB EBX, EAX 
XADD RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
TEST AL, 87 
AND RCX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], -61 
OR BL, -39 
XOR BX, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], 25 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], SI 
CMOVNO AX, BX 
OR EBX, EAX 
XOR ESI, ESI 
TEST CL, DL 
SETNZ AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
