.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], CX 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDI] 
MOV DL, -99 
SUB AL, -52 
CMOVNS DI, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], ESI 
CMOVZ DI, BX 
SBB AL, 75 
CMOVNBE EAX, EBX 
MOVZX DX, DL 
CMP DL, 82 
MOVZX RDI, DX 
IMUL DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], ECX 
MOVSX RBX, SI 
CMOVB EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
CMOVNB RAX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
