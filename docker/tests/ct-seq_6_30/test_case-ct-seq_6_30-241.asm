.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG BL, CL 
AND RAX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RAX], 127 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
CMP DX, -3 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -109 
JP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RDI] 
CMOVNB RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], -89 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -3194 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMP CL, DIL 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
LEA AX, qword ptr [RCX + RAX] 
ADC DI, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -16 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -52 # instrumentation
SBB AL, -2 
INC AL 
MOV AL, CL 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
JMP .bb_main.4 
.bb_main.4:
CMP DIL, -51 
ADD BL, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 43 
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
SUB RAX, -1447368624 
CMOVNO RSI, RSI 
SBB RAX, -1617306260 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
