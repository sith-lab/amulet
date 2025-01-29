.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RBX] 
ADD ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 2 # instrumentation
ADC ESI, -81 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 12351 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], 44 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 123 
MOV AL, 55 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
