.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], DI 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RDI] 
CMOVP DX, DI 
AND RSI, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RSI] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -112 # instrumentation
CMOVNS EDI, EBX 
SUB AL, -56 
AND RDI, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RDX] 
MUL ECX 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], CX 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RCX] 
IMUL DL 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -49 
NEG RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
