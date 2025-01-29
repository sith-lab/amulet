.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC RSI 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RBX 
CMOVS RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], CX 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 19 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], -38 
SUB DIL, 8 
MOV DL, AL 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
SUB AL, -84 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RDI] 
INC RBX 
CMOVNBE BX, DI 
SBB AX, -9 
MOV AL, 70 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -126 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 56 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EAX 
ADD SIL, 117 # instrumentation
SBB RAX, 1887982032 
CMOVNP SI, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RCX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 46 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
