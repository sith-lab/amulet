.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
IMUL DI, SI, -13 
LEA ESI, qword ptr [RDI + RAX + 22626] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DL 
CMOVP ESI, EAX 
CMOVBE RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RSI] 
CMOVL EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], ESI 
ADC DL, BL 
INC AX 
AND RDI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDI] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
XCHG CX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RBX] 
ADC RAX, -1949344319 
ADD EDX, -125 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 37 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RAX] 
SUB RDX, 44 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
CMOVP ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
