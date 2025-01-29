.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], 89 
NEG CX 
CMOVNZ EDX, EBX 
AND EDX, EAX 
ADC EAX, -108 
SETNO DL 
AND RBX, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RCX] 
SETP DIL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], -62 
CMOVS RSI, RSI 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EDX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], -28 
IMUL DI, CX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
CMOVO DX, DX 
MOV AL, -51 
INC SIL 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], BX 
CMOVS EDX, EDI 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], 35 
MOV DL, -124 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 56 
AND RDX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], -59 
CMOVNL DX, AX 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], BX 
ADD CL, 91 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RAX 
IMUL CX, CX, 45 
AND RAX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RAX] 
SUB RDI, -103 
MUL DI 
XOR CX, -61 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RDI 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], CX 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
XCHG SIL, BL 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 60 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
