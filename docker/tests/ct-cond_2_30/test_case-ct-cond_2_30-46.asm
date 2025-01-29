.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP RCX, 56 
XCHG DL, DL 
CMP RSI, RBX 
ADD AL, -125 
MUL EBX 
ADD SIL, -46 # instrumentation
CMOVNL EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDX] 
NEG SIL 
ADD EDI, EAX 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
MOV RDX, -7281122306015849654 
CMP RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RBX] 
CMOVS RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RDI] 
SUB EAX, 827612311 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL DX, DI, -59 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RBX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
ADD CX, -69 
CMOVNS RBX, RSI 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDX 
SUB EDI, 116 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RCX] 
DEC AL 
ADD DL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
