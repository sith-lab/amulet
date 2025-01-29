.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 99 
MOV CX, BX 
AND RBX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RBX] 
CMOVNLE EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
CMOVNL RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RAX] 
ADD DL, 74 
CMP EAX, EBX 
MOVZX EDX, CL 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
CMOVO EAX, EAX 
ADC AL, -107 
AND RCX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -74 
SBB ECX, -25 
CMOVNLE EBX, EBX 
CMOVL ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -36 
AND RDI, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
