.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], BL 
IMUL CX, BX 
NEG SI 
CMP RSI, 48 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 105 # instrumentation
CMOVLE RDX, RCX 
CMOVNB RDI, RDX 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DI 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 27 # instrumentation
CMOVZ EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 82 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RDX] 
SBB AL, BL 
JL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], -10 
CMP SIL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDX] 
XCHG ECX, EBX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ESI 
ADD AX, 11883 
CMOVZ DI, BX 
XCHG BX, DX 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], 124 
MOVSX AX, BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RBX] 
SUB AX, 23357 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, -85 # instrumentation
CMOVO EAX, EDX 
CMP DI, BX 
LEA DI, qword ptr [RAX + RSI + 59313] 
MOVSX DI, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
