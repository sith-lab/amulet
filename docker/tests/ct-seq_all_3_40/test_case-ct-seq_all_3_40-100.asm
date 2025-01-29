.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, -81 # instrumentation
CMOVNBE AX, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RSI] 
SBB RCX, 79 
AND RCX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
MUL BL 
SBB EAX, -2094001764 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
ADD BX, CX 
SBB AX, 13042 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RCX] 
XOR SI, BX 
AND RCX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
IMUL RSI, RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RBX 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DL 
MOV DX, 26151 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], CL 
CMOVLE RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -31786 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 58 
CMOVS RCX, RCX 
JMP .bb_main.2 
.bb_main.2:
DEC RCX 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
SUB RDX, 31 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RCX] 
ADD AL, -122 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DL 
ADD DL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RDX] 
CMOVNL DI, DI 
CMOVNP DX, AX 
CMOVNBE RDX, RAX 
AND ESI, 33 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
