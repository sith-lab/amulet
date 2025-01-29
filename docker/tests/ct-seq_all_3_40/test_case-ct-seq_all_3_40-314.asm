.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND DL, CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
XOR RAX, 60680128 
MOV EAX, EDX 
SETB BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RAX] 
XCHG RCX, RBX 
AND EDX, -24 
AND RAX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -64 # instrumentation
ADC EDX, 13 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], ESI 
ADD EDX, EDI 
AND RAX, -34 
DEC AX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RAX] 
AND RAX, 1441001265 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ESI 
ADD DL, SIL 
SBB DI, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], EDI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RBX] 
CMOVS AX, SI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDI] 
CMP EAX, -1845162717 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 2 
AND RAX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RAX], -32 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 26 # instrumentation
CMOVNBE EDI, EAX 
CMOVNS RDX, RDX 
TEST SI, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RCX] 
SETS BL 
CMOVNLE EAX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RBX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 25 
SETNLE BL 
ADD SI, 60 
TEST RSI, RBX 
IMUL ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
