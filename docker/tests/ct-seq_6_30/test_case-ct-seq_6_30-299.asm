.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -15 # instrumentation
SBB EBX, 5 
IMUL EDI 
ADD RSI, RSI 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -125 
JBE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
SUB RAX, -734996704 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD SIL, -119 # instrumentation
SBB RCX, -31 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -19 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EAX 
CMOVB DX, DI 
SUB DI, DX 
CMOVNB SI, DI 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], -71 
INC BX 
CMOVNB RBX, RSI 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -44 # instrumentation
CMOVO EBX, EBX 
MOVZX RDX, AX 
CMOVP RBX, RCX 
JL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], -19 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 1777048794 
LEA EDX, qword ptr [RAX + RBX + 1191] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDX] 
CMOVZ EAX, EAX 
ADD RDI, RAX 
MOVZX RDX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
