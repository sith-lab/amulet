.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RSI 
CMOVNO SI, CX 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], ESI 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -66 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 111 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
CMP SIL, 21 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 884266894 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DI, DX 
AND RAX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 34 
MOV CX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
