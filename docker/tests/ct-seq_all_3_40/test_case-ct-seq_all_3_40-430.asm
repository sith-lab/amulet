.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RAX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -75 
AND AX, 32764 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
SETLE CL 
SUB AL, 51 
SETNS SIL 
DEC EDI 
CMOVNO DX, AX 
ADC ESI, EDI 
SUB AL, -37 
CMOVBE DI, AX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -59 # instrumentation
NOT DL 
ADC ESI, 46 
SBB RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RSI] 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD SIL, -44 # instrumentation
CMOVNLE EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 90 
XOR DIL, 92 
AND RAX, 186783240 
MOV DX, DI 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -24 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDI] 
CMP EAX, 591301609 
SETNO CL 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EDX 
CMOVNZ RBX, RSI 
OR AX, -32435 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], 104 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
IMUL AL 
CMP RSI, -112 
TEST BX, 23415 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
TEST DIL, 120 
IMUL CX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
