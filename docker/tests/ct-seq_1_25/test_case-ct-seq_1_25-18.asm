.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RCX 
CMOVS EBX, EAX 
INC SI 
BSWAP EAX 
ADC CX, CX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
CMP BL, 56 
CMOVNS ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RBX] 
CMOVB RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 117 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RDX 
ADC SI, CX 
CMOVNB BX, AX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RCX] 
IMUL EBX, EBX, 111 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
