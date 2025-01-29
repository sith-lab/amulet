.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RAX 
MOVSX EBX, AX 
XADD CL, BL 
SETNO AL 
BSWAP EAX 
NOP  
TEST AL, CL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
DEC DI 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 946347604 
MOVZX EDX, DI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV SI, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DL 
XCHG BX, BX 
ADC ESI, 30 
CMOVNL CX, DX 
MUL DI 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RAX] 
ADD SIL, -18 # instrumentation
SETNO AL 
SETNP DIL 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], BL 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
ADD DIL, 119 # instrumentation
SBB EAX, -80 
CMOVL AX, AX 
SBB BX, 78 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], SIL 
AND RSI, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RSI] 
MUL ESI 
CMP AX, 21930 
TEST BL, 68 
NEG EDI 
SETL DL 
SETNB BL 
MOVZX CX, BL 
CMOVZ EDI, EDX 
SETS BL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], -3 
SETL DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
