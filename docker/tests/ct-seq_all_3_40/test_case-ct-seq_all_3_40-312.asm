.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], 121 
DEC DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], 26 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
SBB AX, 30599 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RSI] 
IMUL RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RBX 
MOV EDX, 2038765600 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
ADD SIL, -86 # instrumentation
CMOVNL RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 35 
CMP AX, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], DL 
ADD AL, 77 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
ADD SIL, -108 # instrumentation
CMOVL RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI] 
CMPXCHG EDX, ESI 
NOT ESI 
MOVSX CX, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RAX 
AND RBX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RBX] 
CMP AL, -110 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 94 
SBB RDX, RSI 
XOR RAX, RBX 
AND BX, -75 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDI] 
MOV SI, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], -49 
OR ECX, -50 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -83 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
