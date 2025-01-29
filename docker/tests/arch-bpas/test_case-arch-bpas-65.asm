.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 46 # instrumentation
ADC DIL, -54 
OR DX, 0b1000000000000000 # instrumentation
BSR DX, DX 
CMOVZ EAX, ESI 
TEST AL, -84 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], CL 
JMP .bb_main.1 
.bb_main.1:
ADD RCX, 31 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
TEST CX, -12723 
MOV DL, BL 
JS .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
CLD  # instrumentation
ADD DIL, 25 # instrumentation
SBB DIL, 110 
LEA RCX, qword ptr [RBX + RBX + 12729] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], ESI 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -127 
TEST RAX, -293880283 
CMP RAX, 557032313 
TEST CX, 17840 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
TEST SIL, 46 
SETS AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RBX] 
STC  
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
MOV RCX, 2972816502467000862 
SUB ECX, -19 
ADD RDX, -40 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
XOR EAX, 1494921752 
AND RDI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDI] 
IMUL AX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DIL 
CMOVBE AX, DI 
XCHG BX, CX 
AND RSI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
JZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DX 
SETNO DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], BX 
CMOVNP DX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
