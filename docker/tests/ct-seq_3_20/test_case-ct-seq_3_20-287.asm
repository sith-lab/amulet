.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
MOVZX CX, BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 49 # instrumentation
CMOVNL RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 127 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 73 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -4 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], AX 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RBX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RAX] 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
