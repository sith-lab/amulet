.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 126 # instrumentation
MOV AX, BX 
SETL DL 
OR DI, 0b1000000000000000 # instrumentation
BSR DI, DI 
ADD DIL, 103 # instrumentation
CMOVNS RAX, RSI 
CMOVLE RCX, RDX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RDI] 
CMP SIL, 122 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
INC EAX 
XCHG RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], BX 
SUB RCX, RBX 
MUL BL 
AND AX, 32176 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], DIL 
AND EAX, 789961442 
CMOVB EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
ADD RAX, 1460538243 
CMOVLE DX, BX 
ADD SIL, -33 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], 24 
SETNBE BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RDI 
JMP .bb_main.2 
.bb_main.2:
INC ESI 
AND DI, SI 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RDX 
AND RDI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDI] 
CMP RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], CL 
TEST EAX, 2066700305 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RSI] 
CMOVO ECX, ESI 
SBB AL, 13 
XCHG CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
