.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
IMUL RDI, RSI, -15 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -60 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], CX 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 81 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
SBB ECX, EDX 
SUB AL, -85 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 93 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -75 # instrumentation
CMOVZ EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
