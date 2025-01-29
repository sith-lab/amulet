.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
ADC AL, -5 
AND RDI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDI] 
ADC AX, 4428 
OR CX, 0b1000000000000000 # instrumentation
BSR AX, CX 
SUB EAX, 2004305145 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDX] 
SETNS SIL 
TEST EAX, -1743927145 
IMUL DL 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], CL 
CMOVO BX, SI 
ADC DIL, 59 
MOVZX RAX, SI 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -4 
ADD EAX, 824860402 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RSI] 
XADD DIL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RCX] 
TEST CX, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RCX] 
XOR EAX, EBX 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -95 # instrumentation
SBB SI, DI 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DL 
ADD RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DL 
MOV AL, DIL 
CMOVNLE CX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], AL 
CMP EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDI] 
IMUL RDI, RAX 
XOR CL, 13 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], RBX 
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
CMOVNLE SI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
