.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RBX, RDI 
ADD SIL, -114 # instrumentation
MOV CL, CL 
CMOVNBE EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -95 
AND RSI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -82 
MOV BL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -12 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CBW  
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], SI 
MOV RAX, -6748763251140885369 
MUL AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
