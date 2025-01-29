.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL DIL 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], -90 
CMOVNL EDI, EAX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD DIL, 118 # instrumentation
CMOVNS RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RBX] 
MOV DX, 3672 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DIL 
AND RCX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RCX] 
CMOVP RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], -44 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 121 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
SUB RAX, -96 
BSWAP RAX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EBX 
SBB ECX, 62 
SUB AL, 126 
ADD CL, -90 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -58 # instrumentation
CMOVNB BX, DI 
IMUL DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RSI] 
CMOVNB DX, CX 
AND RDI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDI], -24 
CMP CL, -10 
AND RDI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -75 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
