.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RCX] 
CMP CL, 42 
CMOVP AX, BX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RCX] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD SIL, 124 # instrumentation
SBB EAX, 7 
SBB EAX, -1964130855 
MOV BX, CX 
IMUL EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 40 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RDX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XOR RDI, RCX 
CMOVZ RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RBX] 
MOVSX RBX, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -40 
IMUL RSI, RDX 
ADD DIL, -11 # instrumentation
CMOVLE ECX, EBX 
NEG ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RAX] 
CMOVNBE CX, CX 
SBB AX, 6838 
AND SI, 16 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 37 
XOR RBX, -76 
SUB AL, 13 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX], -31 
MUL RAX 
MOV EDX, 631315505 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
ADD SIL, -26 # instrumentation
CMOVNP RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
SBB RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], DL 
CMOVNO SI, SI 
SETNBE CL 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], RAX 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 1719981171 
CMOVNBE RBX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
