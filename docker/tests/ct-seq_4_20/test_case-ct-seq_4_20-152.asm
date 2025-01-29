.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
ADC EAX, -1576078378 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
ADD SIL, 59 # instrumentation
CMOVNLE RSI, RDI 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -107 # instrumentation
CMOVP RBX, RCX 
XCHG RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EDI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -55 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -4 # instrumentation
SBB AL, 33 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], SI 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX], -84 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RSI 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], 119 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
