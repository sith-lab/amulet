.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], 112 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], 60 
ADC AL, 112 
AND RCX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RCX] 
ADD CL, 8 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RBX 
CMOVL EBX, EAX 
MOVZX EDI, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
SUB CL, -52 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RSI] 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
ADD AL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], 115 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
