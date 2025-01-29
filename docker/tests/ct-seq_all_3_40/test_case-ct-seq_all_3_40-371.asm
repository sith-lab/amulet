.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDI] 
SETNO SIL 
XCHG EDX, EAX 
AND AL, -92 
CMPXCHG CL, AL 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], EBX 
CMOVNS BX, CX 
XOR AL, CL 
SUB DL, BL 
TEST DL, SIL 
OR DX, -111 
DEC DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDI], RBX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
CMOVNS EDI, ESI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -88 # instrumentation
SETNZ BL 
XCHG BL, BL 
TEST DI, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RCX] 
XCHG BL, AL 
XCHG ESI, EAX 
MOV RCX, 6373476236432927448 
SBB EBX, -89 
SUB AX, -29729 
MUL DX 
SETO CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RDX 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST CL, DL 
CMP AX, 29376 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], -102 
XCHG RDX, RSI 
ADD AX, 18568 
MUL CL 
ADD DIL, 12 # instrumentation
CMOVLE AX, AX 
XOR BL, DL 
SETP BL 
SUB AL, -117 
INC DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
