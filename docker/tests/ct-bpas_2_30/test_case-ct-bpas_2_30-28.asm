.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL DL 
MOVSX RSI, DL 
AND RDI, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RDI] 
SBB CL, -47 
AND RSI, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], BX 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RCX 
XCHG BL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], BX 
XCHG BX, CX 
CMOVBE EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], DX 
AND RAX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
AND RDX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -18 # instrumentation
ADC SI, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RAX] 
INC CL 
MOV EAX, 1380726395 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -111 
CMP AX, -20009 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
ADC EAX, 1693325714 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
CMOVB RBX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
