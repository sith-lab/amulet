.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDI 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
DEC DX 
AND RDI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], BL 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], 100 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -50 
CMOVNL EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -28 # instrumentation
SBB EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], -21 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], SIL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -46 # instrumentation
ADC RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RBX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 20 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
