.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], BL 
INC RCX 
AND RSI, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
SUB AL, 110 
MOV RDI, 6670665615088224898 
CMOVZ ECX, EAX 
MOV EBX, EAX 
CMOVNBE RCX, RSI 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD BX, -124 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 86 
SBB BL, 24 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], AL 
STC  
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
ADD SIL, 79 # instrumentation
CMOVNP DX, CX 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
JNS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, -107 # instrumentation
CMOVS CX, CX 
SUB RBX, RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -111 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RBX] 
XCHG AX, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], BL 
JL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 3 # instrumentation
CMOVNB RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RBX] 
IMUL EBX, EBX, -80 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
