.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], DI 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 119 
AND RSI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RSI] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -12 # instrumentation
CMOVO RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
SBB AL, 104 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
CMP EDI, 69 
ADD EAX, -15817725 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
ADC RAX, -1503668583 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], 93 
AND RBX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RBX] 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RDX] 
CMOVLE CX, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], DIL 
CMOVS EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -13 # instrumentation
CMOVNP SI, DX 
CMP EAX, -1853062672 
AND RSI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RSI] 
MOVZX EDI, DL 
INC RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
