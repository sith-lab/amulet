.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 27 # instrumentation
CMOVLE CX, CX 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
XCHG DL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR EDX, 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -10 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -123 
AND RCX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RDI] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
SUB CX, -58 
DEC EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 76 
CMOVNL EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
SUB RDI, -115 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EBX 
IMUL EDI, EDX 
ADD SIL, -1 # instrumentation
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 118 
XCHG BL, DL 
CMOVLE RAX, RCX 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 0 # instrumentation
SBB RAX, 1583128425 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
CMOVNL EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
