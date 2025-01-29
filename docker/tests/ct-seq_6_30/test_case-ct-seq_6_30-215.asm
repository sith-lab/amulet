.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], CX 
MOVZX RDX, AX 
IMUL ECX, ECX 
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX], 40 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 385768392 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], AX 
MOVSX EDX, AL 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], CX 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DL 
CMP AL, 43 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
CMP SIL, -101 
JMP .bb_main.2 
.bb_main.2:
XCHG CX, AX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -25 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 109 # instrumentation
MOV RDX, RCX 
MOVZX RCX, CX 
CMOVNL RDI, RDX 
CMOVNS ESI, ESI 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RCX] 
CMOVL BX, BX 
CMOVBE RDI, RDI 
JMP .bb_main.5 
.bb_main.5:
BSWAP EDX 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RSI, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RSI] 
MUL SIL 
OR DL, 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RCX 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
