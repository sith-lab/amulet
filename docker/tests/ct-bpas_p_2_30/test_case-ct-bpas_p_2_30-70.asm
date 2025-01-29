.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RBX] 
CMOVZ ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RCX 
DEC BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ESI 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
SBB DL, CL 
CMOVP RDI, RDX 
ADD BX, -3 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 38 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EBX 
OR DX, 0b1000000000000000 # instrumentation
BSF CX, DX 
ADD SIL, -54 # instrumentation
SBB BX, -31 
AND RSI, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RSI] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV AL, 61 
IMUL AX, DX 
ADD DIL, 69 # instrumentation
CMOVNL SI, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 114 
AND RBX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RAX] 
IMUL CL 
MOVSX RAX, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RBX] 
ADD AX, 21387 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDX] 
ADC AL, 23 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
