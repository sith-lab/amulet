.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP SIL, AL 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RAX 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -55 
AND RCX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RCX] 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX], -95 
AND RCX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -57 # instrumentation
ADC SI, DX 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -125 
CMOVS RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
