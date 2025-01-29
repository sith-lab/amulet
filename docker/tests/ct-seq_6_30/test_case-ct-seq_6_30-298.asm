.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
CMOVL ECX, ECX 
SUB EDI, -6 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
DEC ECX 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -83 # instrumentation
CMOVO EDX, EAX 
IMUL EAX, EAX, 88 
ADD DIL, 19 # instrumentation
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
MOV RDI, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -1271711448 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EAX 
MUL DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DIL 
CLD  
ADC BX, CX 
CLC  
JMP .bb_main.5 
.bb_main.5:
ADD AX, -9272 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 2 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -87 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 13 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDI] 
MOV RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
CMOVNO CX, DI 
CMP EAX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
