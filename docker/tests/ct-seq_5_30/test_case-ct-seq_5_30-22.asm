.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
CMOVLE DI, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
MOVZX ESI, SIL 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RCX] 
MOV BL, 109 
AND RAX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RAX] 
SUB AL, -7 
BSWAP RAX 
SBB SIL, -94 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDX] 
CMOVBE RBX, RAX 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, -47 # instrumentation
ADC AL, 19 
MOVSX EBX, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
MOV RSI, -6485439659845350811 
CMOVNLE RCX, RDX 
CMOVP RDI, RBX 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -126 
NEG RDX 
BSWAP EBX 
CMP DL, CL 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -65 # instrumentation
CMOVNBE RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 91 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
