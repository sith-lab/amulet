.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 56 # instrumentation
ADC EAX, -423954655 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDI] 
CMP AL, 20 
CMOVNBE DI, AX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], -15 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], CX 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 124 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], CX 
MOV DL, CL 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
SUB AL, CL 
AND RDI, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RDI] 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RAX], -39 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
