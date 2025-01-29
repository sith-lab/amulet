.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], 13 
INC DIL 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
MOVZX ECX, CL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RCX] 
MOVSX BX, AL 
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, -108 # instrumentation
CMOVB SI, DI 
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
ADC DL, 119 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -119 
MOV CL, BL 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
IMUL CX, BX 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RCX 
ADD RCX, -32 
SUB AX, 24734 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -108 
AND RCX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RCX] 
IMUL CX, SI, 86 
ADD SIL, 57 # instrumentation
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
IMUL EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
CMP ESI, -47 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
