.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], BX 
JNZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
IMUL RCX, RDX 
LEA AX, qword ptr [RBX + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
MOVSX EBX, DL 
SUB DIL, 30 
CMP AX, 17446 
LAHF  
JMP .bb_main.2 
.bb_main.2:
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RBX] 
ADD DIL, -100 # instrumentation
SBB AL, -13 
JMP .bb_main.3 
.bb_main.3:
SUB CX, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EBX 
MOVSX RDI, DI 
INC CL 
MOVSX DX, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
LOOPE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
CMOVNBE ECX, EAX 
NEG DL 
JMP .bb_main.5 
.bb_main.5:
CMP BL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], SIL 
CMP AL, -81 
CMOVNB EDI, EBX 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 66 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
