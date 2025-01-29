.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -82 
SUB DIL, 39 
AND RDX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RDX] 
IMUL AX, BX, 100 
JMP .bb_main.1 
.bb_main.1:
CMP AX, 127 
AND RBX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 66368857 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 56 
AND RDI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], AL 
SBB AL, 30 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -21 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 8 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EAX 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], SIL 
MOV DL, -54 
AND RSI, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
