.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL ECX, EAX, 106 
ADD EDX, 24 
IMUL DL 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 103 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
IMUL AX 
CMP DIL, AL 
AND RBX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RBX] 
ADC RCX, RBX 
CMOVLE SI, DI 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RAX] 
TEST AL, CL 
AND RAX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RAX], 9 
AND RBX, -108 
JNO .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, -52 # instrumentation
CMOVBE EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RBX] 
NOT SI 
ADD AX, 4089 
ADC EAX, 662590587 
XADD RAX, RSI 
CMP RDI, 41 
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RDX] 
TEST SIL, -39 
MOVZX EDX, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR ECX, dword ptr [R14 + RDI] 
CMOVNLE RCX, RSI 
CDQ  
JMP .bb_main.4 
.bb_main.4:
CLD  # instrumentation
BSWAP RAX 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], AL 
MUL SI 
ADD DIL, 1 # instrumentation
SETS CL 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 38 
MOVZX RSI, CL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
INC CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
