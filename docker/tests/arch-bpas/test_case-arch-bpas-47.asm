.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -40 # instrumentation
SETZ DL 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RAX 
BSWAP EBX 
AND RCX, RSI 
SUB DI, CX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD DIL, 11 # instrumentation
CMOVBE RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
CMOVNBE EBX, ESI 
CMP DIL, -101 
XCHG SI, AX 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
IMUL SI 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 73 
CMOVLE RAX, RCX 
AND AL, 77 
SETNL AL 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
CMOVNS EDI, EBX 
XCHG CX, AX 
ADD DI, -109 
MUL AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RSI] 
SUB RSI, RSI 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG EAX, EAX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
MOV DL, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], -82 
SETNLE BL 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND ECX, 57 
MUL AL 
ADD SIL, 75 # instrumentation
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
CMOVZ DI, BX 
NEG EAX 
CMOVNL RDX, RDI 
ADD AL, SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], RBX 
XCHG RDI, RAX 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], 85 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
