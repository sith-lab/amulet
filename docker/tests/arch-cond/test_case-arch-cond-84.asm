.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST EAX, EBX 
DEC DI 
MOVSX RDX, AX 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], -830794354 
ADD AL, 8 
NEG BX 
ADD SIL, -104 
CMOVNLE ESI, EAX 
CMOVO ESI, ECX 
MOV DI, -18957 
SETS DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RDI] 
IMUL ESI, EAX, 29 
CMOVB RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], BL 
ADD EAX, -1414594875 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RBX] 
CMOVO ESI, ECX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
INC RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND ESI, -72 
XCHG AL, BL 
NOP  
SBB AX, -22416 
SETZ SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RAX] 
SETNLE SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RDI] 
CMOVNBE EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RDI] 
OR DX, 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDX] 
XADD DI, BX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], ECX 
TEST AX, -21446 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RSI 
AND RAX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
