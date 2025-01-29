.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL SI, DI 
ADC EAX, -1881921430 
INC RDX 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RCX] 
CMOVP EBX, EAX 
CMOVLE RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RSI] 
CMP BX, 106 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 81 
MOVSX RDX, DX 
MOV AX, CX 
ADC AX, 5852 
JNP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, -116 # instrumentation
CMOVNZ BX, DI 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 96 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RAX] 
ADD RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RAX] 
ADD SIL, -56 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RCX 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
ADD DIL, 6 # instrumentation
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
CMP SIL, -55 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
