.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -78 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EAX 
ADD AL, 96 
CMP SI, SI 
NEG RBX 
CMOVS DX, CX 
MUL DL 
SBB EAX, -971638075 
ADD DX, BX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], BX 
LEA ECX, qword ptr [RBX + RSI] 
SBB AX, -22721 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDX 
SUB DI, CX 
CMOVNLE RAX, RDX 
AND RDI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RAX] 
MOVZX DX, DL 
SBB RAX, 1164540009 
INC SI 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
CMOVNO CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
