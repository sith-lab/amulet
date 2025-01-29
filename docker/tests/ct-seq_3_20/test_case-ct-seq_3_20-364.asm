.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EDI 
CMOVP DI, BX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
CMOVNO RAX, RBX 
SBB AX, CX 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB AL, 71 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -190963878 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
