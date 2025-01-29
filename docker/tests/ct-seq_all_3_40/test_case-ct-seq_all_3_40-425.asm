.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDX] 
CMOVNLE EAX, EDX 
SUB CL, BL 
XOR BL, DL 
AND RAX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RAX] 
IMUL BX, CX, -54 
OR RAX, 17831215 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RSI] 
SBB BX, 28 
ADC AX, CX 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 113 
ADD SIL, -117 
ADC SIL, 81 
XCHG EDX, EAX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
CMOVP EBX, ECX 
ADC EAX, EBX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RCX 
ADD SIL, 117 # instrumentation
SBB EAX, -107 
CMOVL RCX, RDI 
CMC  
TEST CL, BL 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], ESI 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
MOV AL, CL 
ADD BX, -46 
SETNL SIL 
CMOVZ CX, SI 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
XADD DX, DI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
ADC BX, CX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
IMUL EBX, ECX, 26 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EDX 
CMOVZ DX, DI 
SETS AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
