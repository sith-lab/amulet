.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DIL, DL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], AL 
SBB CL, 7 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 82 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], AX 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -115 
CMP CX, -57 
AND RCX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RDI] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 56 
STD  
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
ADD EAX, 1391851410 
NEG RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
