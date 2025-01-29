.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RSI] 
XCHG RCX, RBX 
IMUL AX, DI 
ADC EAX, -840813203 
JMP .bb_main.1 
.bb_main.1:
SUB EDX, EDX 
SBB AL, 7 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
IMUL EDX, ESI 
CMOVO SI, DX 
JMP .bb_main.2 
.bb_main.2:
ADD EAX, -1619770324 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], 22 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 31 # instrumentation
SBB AL, SIL 
DEC EAX 
SBB EDI, EAX 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 17 
CMOVNB CX, BX 
CMOVB DX, SI 
CMOVNL DI, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RSI 
AND RDI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 68 # instrumentation
CMOVNZ RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EAX 
LOOPNE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDI] 
MOV CL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RDX 
CMOVO SI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
