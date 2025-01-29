.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RAX], -96 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 42 
CMOVS SI, AX 
AND RAX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 92 
CMOVO RBX, RAX 
ADD EAX, -95 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -93 # instrumentation
CMOVLE RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 40 
ADC DL, DL 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 47 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
