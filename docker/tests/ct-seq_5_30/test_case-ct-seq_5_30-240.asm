.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -62 # instrumentation
MOV BL, SIL 
SBB AL, -101 
CLD  
IMUL DI, DX, -59 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
DEC BL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -61 
CMOVP RSI, RBX 
CMOVNZ RAX, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -16 
CMC  
JMP .bb_main.2 
.bb_main.2:
XCHG AX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
CMOVNS RDX, RDX 
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
LEA RDX, qword ptr [RDI + RDI + 31966] 
MUL ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EDX 
MUL RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
ADD RDI, 78 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 124 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], 118 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
