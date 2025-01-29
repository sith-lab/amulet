.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 120 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EBX 
IMUL DL 
SBB RAX, RDI 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RDX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], DX 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
CMP RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 32 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -126 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 111 
CMOVO RCX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], 57 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 28 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 65 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
