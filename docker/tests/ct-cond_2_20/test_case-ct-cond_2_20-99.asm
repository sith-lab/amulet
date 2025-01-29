.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EBX, 19 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -100 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -124 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -76 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 125 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
