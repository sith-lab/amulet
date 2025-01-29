.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RCX] 
TEST EBX, -1688836689 
TEST AX, -22864 
CMOVNB ESI, EDI 
JMP .bb_main.1 
.bb_main.1:
INC RAX 
CMOVNS RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RCX] 
TEST EAX, 992347189 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
ADD DIL, 75 # instrumentation
SETNS AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], AL 
AND RDI, 2 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DL 
CMOVNB AX, DI 
TEST CX, DX 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
XOR AL, 31 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
SUB CL, -109 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], AL 
XOR BL, -13 
ADD RAX, 6 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], -37 
SBB DX, DX 
SETLE DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RDI] 
SETNLE DL 
ADC BL, CL 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -49 # instrumentation
ADC RAX, -1439854078 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
ADD SIL, 54 # instrumentation
CMOVNZ EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RSI 
XOR AX, -94 
CMOVO DX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RAX] 
SETNZ CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], ESI 
SETL BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
