.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB DX, DI 
AND RDX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDX], -40 
MUL DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -353455112 
CMOVNZ AX, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -71 
CMOVNZ EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 76 
AND RCX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDX] 
CMOVB ESI, ESI 
INC CL 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RDX 
SBB RDX, RDI 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RAX] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -128 
ADD RCX, -82 
SBB EAX, 1163886654 
CMOVP EDI, EAX 
MOV RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], BX 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -85 
CMOVZ DI, CX 
SUB ECX, -72 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ESI 
CMOVNL RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDI] 
IMUL EBX, EAX, 65 
ADD SIL, -31 # instrumentation
CMOVP RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
