.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -123 # instrumentation
CMOVO RDX, RBX 
OR DL, 1 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -1 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], DX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -11 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -85 # instrumentation
CMOVBE RCX, RCX 
CMP AL, DL 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], -18 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], BL 
ADD AL, 96 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RBX] 
XCHG BX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RAX 
SBB RCX, 78 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
