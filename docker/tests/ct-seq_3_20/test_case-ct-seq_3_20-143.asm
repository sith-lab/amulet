.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
CMP DIL, 25 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -76 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EDX 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RDX] 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV SIL, 51 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
IMUL ESI 
AND RBX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RBX] 
IMUL RAX, RSI, -115 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -23 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
