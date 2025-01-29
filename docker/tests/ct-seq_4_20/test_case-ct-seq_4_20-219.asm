.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 106 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], CX 
AND RAX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 30 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 112 # instrumentation
CMOVNL DX, SI 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 96 
SUB AL, -24 
AND RSI, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RSI] 
ADD RAX, -112 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], DI 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RDX] 
CMOVO SI, DX 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
