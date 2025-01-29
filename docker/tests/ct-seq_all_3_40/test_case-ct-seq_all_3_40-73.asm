.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 48 # instrumentation
CMOVNBE CX, AX 
ADC AL, 65 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDI] 
SETL DL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
OR AX, -31885 
ADC CL, 96 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], BX 
SETZ CL 
XCHG EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 58 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], CX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL DL 
AND RCX, RCX 
MOVSX BX, CL 
TEST AX, -7582 
SUB SIL, -49 
XOR AL, -54 
XADD RBX, RCX 
SETNO CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
SUB RCX, RDI 
ADC RAX, -903656774 
SBB ECX, -52 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RCX] 
SBB AL, 53 
CMOVNO RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RSI] 
SAHF  
CMOVNO ESI, ESI 
IMUL SIL 
CMOVNB DX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EBX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
