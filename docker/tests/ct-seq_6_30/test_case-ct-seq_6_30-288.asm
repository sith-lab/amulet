.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
ADD RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RBX], -125 
INC AL 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], BX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL ECX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RBX] 
NEG EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], DX 
MOV BL, SIL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
MOVZX RCX, BX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -127 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -10 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RDX] 
CMOVNBE BX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DIL 
CMOVS ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RDX] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD DIL, 112 # instrumentation
JO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
DEC DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
ADC RBX, 0 
JMP .bb_main.5 
.bb_main.5:
SUB CX, DX 
MOVSX EBX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
