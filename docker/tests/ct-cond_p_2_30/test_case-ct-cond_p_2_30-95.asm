.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RBX] 
CMP RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], CL 
DEC CX 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EBX 
LEA RAX, qword ptr [RDI + RDI + 54651] 
ADC RDI, RDI 
INC DX 
IMUL RDX, RDX 
ADD RCX, RDX 
CMOVZ EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EBX 
AND RCX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RCX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EDX 
SUB RAX, -1836304272 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 68 
CMOVNL RAX, RDX 
SBB RCX, RDI 
CMOVNS DI, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 20 
MOVSX RBX, BL 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 2 
SUB DIL, -5 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
ADC SIL, 5 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
LEA RDX, qword ptr [RBX + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
