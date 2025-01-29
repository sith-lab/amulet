.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 69 # instrumentation
CMOVO RDI, RDX 
CMP ECX, EAX 
CMOVZ RAX, RCX 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RBX] 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
IMUL DX, DX, 26 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RDX] 
XCHG CX, AX 
INC ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
CMOVS RBX, RSI 
CMP RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -59 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
