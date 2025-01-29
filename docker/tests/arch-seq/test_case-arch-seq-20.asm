.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 26 # instrumentation
CMOVP AX, DI 
AND RDI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDI] 
IMUL RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RDX] 
MOV CL, -20 
INC RDX 
TEST DX, SI 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RAX], EDI 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
NOT BX 
SUB DL, -30 
XOR BL, BL 
CMOVNO ESI, ECX 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
SETO BL 
AND AL, 2 
XADD DL, DL 
LEA EAX, qword ptr [RCX + RSI + 26311] 
SETNP DL 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
XOR AX, 19792 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], -70 
JMP .bb_main.3 
.bb_main.3:
TEST AX, 16391 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
OR CX, 0b1000000000000000 # instrumentation
BSR DI, CX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 1284711269 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RCX] 
SUB AL, -101 
CMPXCHG SIL, SIL 
AND SI, DX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RAX] 
NOT BL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
CMP DL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
