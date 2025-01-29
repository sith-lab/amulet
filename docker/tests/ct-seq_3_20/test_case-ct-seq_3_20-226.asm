.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RAX 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 82 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -15 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 78 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -70 
AND RSI, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDI], 106 
ADD SIL, -99 # instrumentation
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
DEC BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], 76 
CMP DX, CX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RCX] 
CMP RDI, 26 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
