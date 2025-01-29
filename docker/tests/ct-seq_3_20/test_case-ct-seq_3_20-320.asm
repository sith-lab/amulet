.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
ADD SIL, 1 # instrumentation
MOVSX RAX, BL 
CMOVNL RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 34 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -121 
AND RDX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RDX] 
MUL DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 102 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RAX], -23 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], DX 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
