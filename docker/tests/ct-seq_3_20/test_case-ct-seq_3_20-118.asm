.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], CX 
MOV DX, 26294 
ADC DIL, -25 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DIL 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 5 
CLD  
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
CMOVNBE BX, BX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 6 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], -98 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
ADD SIL, 46 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RDI] 
SBB AX, -16195 
CMP ESI, 117 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
