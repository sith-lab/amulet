.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 45 
CMOVNL RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -88 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDX] 
CMOVNBE SI, BX 
MOVSX DI, DL 
CMOVZ DX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -84 
AND RAX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], SIL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 41 # instrumentation
CMOVNB ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
SBB DIL, -58 
ADC AX, -30058 
CMP AX, 13028 
NEG SI 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDI] 
ADD DIL, -16 # instrumentation
CMOVNS AX, SI 
MOV RSI, -7190586642192806233 
MUL RAX 
DEC DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
