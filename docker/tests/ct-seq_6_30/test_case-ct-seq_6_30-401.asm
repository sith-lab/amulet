.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG DL, CL 
MUL RDX 
ADD SIL, -121 # instrumentation
JLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
CMP EAX, 1836072304 
AND RDX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RDX] 
SBB SIL, -54 
XCHG RDX, RAX 
JL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -39 
DEC BL 
ADD DL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RBX] 
MUL SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 8 
ADC DX, CX 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
JNLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RSI] 
SBB BL, BL 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDX 
CMP ECX, ECX 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EAX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RBX 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -97 
CMOVNP EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
MOVSX ESI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
