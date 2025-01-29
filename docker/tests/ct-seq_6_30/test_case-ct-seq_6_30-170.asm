.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -19 
ADD DIL, -15 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
STC  
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NEG CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], -16 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 14282 
MOV DI, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
CMOVNBE SI, BX 
DEC RSI 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RAX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RBX 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -24 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], BL 
JNO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
MOV EBX, -834744638 
JMP .bb_main.5 
.bb_main.5:
MOV BL, -43 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -6 
CMOVBE RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
