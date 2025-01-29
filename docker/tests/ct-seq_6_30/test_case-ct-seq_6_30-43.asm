.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 61 
XCHG RAX, RAX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RAX] 
ADC ESI, -81 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -17 # instrumentation
MOVZX SI, BL 
MOV DL, 21 
CMC  
CMOVBE RAX, RAX 
SBB CX, -3 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
MOVZX ESI, BL 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
ADD DIL, 79 # instrumentation
JS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, 101 # instrumentation
CMOVP CX, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RSI] 
MUL AL 
SBB CL, -96 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDI] 
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RAX] 
CMOVNBE RSI, RSI 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI], -109 
ADD ESI, -45 
SUB EDI, EBX 
CMOVNL ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
