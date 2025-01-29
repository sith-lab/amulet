.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL DX, BX, -45 
MOV AL, BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RBX] 
XOR RAX, -795359337 
SUB AL, -71 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
CMOVL RDI, RCX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD DIL, 80 # instrumentation
MOV EDI, ESI 
CMOVL AX, BX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], -13 
SETP AL 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR CL, BL 
CMOVNBE EDI, EAX 
SETZ AL 
AND RDX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -25 
TEST CL, -55 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], CL 
LEA ESI, qword ptr [RCX] 
JMP .bb_main.2 
.bb_main.2:
CDQ  
AND RAX, -55 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RCX] 
SETNS DL 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], -25 
ADD AX, 19741 
SBB EDI, EAX 
MOV SIL, DL 
CMOVS RCX, RDI 
CMOVL BX, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RSI] 
SUB ESI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
