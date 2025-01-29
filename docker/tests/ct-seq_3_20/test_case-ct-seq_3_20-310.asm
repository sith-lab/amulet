.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG AL 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -120 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -44 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMP DI, CX 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 95 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -111 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
CMP DIL, 53 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], 113 
XCHG DX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], 2 
AND RAX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 55 
AND RCX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RCX] 
IMUL RSI 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
MOV CL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
