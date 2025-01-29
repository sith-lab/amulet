.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -40 # instrumentation
CMOVB RBX, RAX 
ADC DX, -35 
MOVSX BX, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
CMOVLE RSI, RCX 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD DIL, 119 # instrumentation
INC DI 
SBB AL, 32 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], 119 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
ADC ECX, ECX 
CMOVNO ESI, ESI 
CMOVP CX, AX 
IMUL RAX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 113 
XCHG RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -1534754761 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDI] 
ADC DIL, 0 
BSWAP ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RSI 
DEC ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
