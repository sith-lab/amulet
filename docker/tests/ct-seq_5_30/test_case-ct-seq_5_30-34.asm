.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX BX, BL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RAX] 
CMOVZ CX, CX 
SUB SI, AX 
CMOVB RSI, RDX 
CMOVLE CX, DX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
DEC DX 
MUL DIL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 21 
JNP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RAX] 
SUB EAX, 690258017 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
ADC DI, SI 
INC DL 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], SIL 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -46 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], DX 
CMP RBX, 73 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], 49 
CMOVNL RBX, RDX 
CMOVBE RCX, RCX 
JMP .bb_main.4 
.bb_main.4:
XCHG RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDI] 
CMOVP RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RSI] 
LEA DI, qword ptr [RDX + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
