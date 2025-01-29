.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], AX 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -72 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 10 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
XCHG AL, CL 
AND RDI, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RDI] 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -80 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 97 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDI] 
SUB AL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RBX] 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDX] 
CMOVNS DX, AX 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], CX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDX], -109 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
