.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], CX 
IMUL RSI, RBX 
ADD SIL, -50 # instrumentation
CMOVNBE EAX, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], BL 
SETNZ BL 
SUB EBX, ECX 
AND EAX, -1638161878 
IMUL DI, BX 
MOVZX RDI, DI 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], 19909 
IMUL DI, BX 
XCHG DL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RBX] 
AND RAX, 2072884183 
TEST EDX, EDI 
CMPXCHG EDX, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], BX 
SBB RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND DL, BL 
MOV BL, -74 
IMUL DI 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], -102 
SETZ AL 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RBX 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST RCX, RBX 
XOR BL, DL 
XADD AL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RCX] 
NEG DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 27 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], BL 
CLD  
AND RDX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDX] 
SUB AL, 110 
XOR BX, 11 
CMP SIL, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
