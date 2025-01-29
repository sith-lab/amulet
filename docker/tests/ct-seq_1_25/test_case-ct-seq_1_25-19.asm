.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RCX] 
SBB RDI, -126 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDI] 
INC CL 
CMP CX, -93 
CMOVNL RDI, RBX 
ADD RDI, RSI 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], ESI 
ADC DL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RAX] 
IMUL ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
CMOVNB DX, CX 
CMOVBE DX, DI 
CMOVNBE ECX, EAX 
CMOVL DI, DI 
SUB AL, 87 
ADD AX, 7583 
CMOVNB CX, AX 
MUL ESI 
DEC CX 
AND RCX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
