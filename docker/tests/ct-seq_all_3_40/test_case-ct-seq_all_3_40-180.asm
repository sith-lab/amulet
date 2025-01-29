.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RCX] 
SETNLE DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RBX] 
SETNS CL 
CBW  
XOR DIL, -42 
NEG CX 
NEG ESI 
CMPXCHG BX, CX 
ADC AL, BL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL EDX, ECX, 60 
ADC ECX, EDX 
MOVZX RAX, SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], RDI 
XCHG EBX, EAX 
CMOVZ SI, CX 
AND RDI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDX] 
ADD SIL, -112 # instrumentation
SBB BL, -31 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
TEST AX, 32617 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RDX, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], BL 
SETNL DL 
INC CX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -13 # instrumentation
CMOVBE CX, AX 
ADC CL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], DIL 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], EAX 
CMOVNL RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RSI 
SUB EBX, 2 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], DL 
MUL BL 
AND RSI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RSI] 
CBW  
ADD EAX, -161373844 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
