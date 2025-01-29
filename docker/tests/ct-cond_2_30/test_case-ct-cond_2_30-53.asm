.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL EDI 
CMP EBX, -94 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 107 
SBB EDI, ECX 
IMUL SI, AX 
CMOVNO AX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RSI 
AND RDI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDI] 
XCHG SI, AX 
SBB AL, 114 
CMOVNBE CX, DX 
CMOVNLE EDI, EDX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RBX] 
CMOVNB EDI, ECX 
ADC EDX, ECX 
CMOVL EBX, ESI 
CMP CX, CX 
CMOVNL DX, AX 
CMP RCX, 0 
CMOVNBE DI, DI 
CMOVP DX, DI 
CMOVL ECX, EDI 
CMP RBX, RCX 
IMUL EDI, EDI 
IMUL ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
SUB RAX, -1427046481 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EDX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
