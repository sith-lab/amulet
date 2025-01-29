.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -124 # instrumentation
SBB EDI, 49 
CMOVNS CX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 0 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], BL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD RBX, RDX 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RDI] 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
ADD DIL, 77 # instrumentation
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, -38 # instrumentation
LEA ESI, qword ptr [RDX] 
CMOVNZ RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RDI] 
MOV AX, 17779 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], 118 
XCHG BX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDI] 
JBE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 59 
AND RDX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RDX] 
CMOVNO BX, CX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -13 
JNS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
INC ECX 
SUB AL, -11 
SUB AL, -102 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RSI] 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -60 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
