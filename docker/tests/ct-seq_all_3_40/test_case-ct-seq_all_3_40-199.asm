.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EDX 
TEST AL, -109 
CMOVNB EDX, EBX 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
IMUL ESI, EDX 
ADD DIL, 20 # instrumentation
XCHG AX, AX 
CMOVNLE ECX, EBX 
CMP EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
XOR DX, SI 
LEA ESI, qword ptr [RBX + RCX + 29123] 
BSWAP RCX 
TEST RCX, RDX 
SUB ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
OR AL, -22 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RAX] 
CMOVNB RAX, RDX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
CMOVB RCX, RBX 
SUB AL, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RBX] 
TEST BL, 113 
XCHG RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EBX 
XOR AL, SIL 
ADD EAX, 950223883 
AND RAX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RAX] 
TEST SI, BX 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], 82 
CMOVNBE RDI, RDI 
CLC  
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RSI] 
MUL RSI 
ADD SIL, -58 # instrumentation
SETLE DIL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
