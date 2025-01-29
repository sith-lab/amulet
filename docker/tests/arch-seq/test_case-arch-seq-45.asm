.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RDX] 
MOV BL, 66 
AND RDI, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RAX 
SETNZ BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], CX 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 118 # instrumentation
SETNB AL 
OR RSI, 108 
ADD EAX, 1965519278 
AND SIL, 56 
CMOVNP SI, CX 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], -127 
SETNO CL 
MOV RSI, RBX 
JL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
SETL BL 
TEST RDI, RDI 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RCX 
CMOVZ AX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RDX] 
XOR RDX, 42 
XADD SI, DI 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RDI] 
ADD DIL, -7 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI] 
SBB AX, 12896 
ADD AL, 59 
JMP .bb_main.4 
.bb_main.4:
OR BX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RAX 
CMP AX, 9278 
ADC AL, DL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDX] 
CMP AX, -11675 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
