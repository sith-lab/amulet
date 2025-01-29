.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RCX, -101 
CMOVNLE EAX, EAX 
ADC RAX, 1811278986 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], DI 
CMOVNBE DI, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
SUB DL, SIL 
SETNBE AL 
AND RDI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDI], EAX 
SETL SIL 
JBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RSI] 
CMOVL CX, DX 
OR DL, 16 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], CL 
AND AL, 28 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDI], RDX 
OR ECX, -105 
CMP DX, 19 
AND RDX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RCX] 
XOR RAX, RDI 
SBB RCX, -60 
CMOVNLE RBX, RSI 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI], -118 
SBB RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
ADD SIL, -45 # instrumentation
CMOVL EBX, EDI 
CMOVNP DX, CX 
SETL DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RSI] 
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CLD  # instrumentation
AND RBX, RDX 
IMUL ECX, EBX, 109 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RBX] 
XCHG BX, AX 
CMOVNL RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
CMOVNL EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
