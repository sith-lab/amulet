.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
CMP RBX, RCX 
IMUL SI, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], DX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 55 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], BL 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD DIL, 22 # instrumentation
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 97 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 20 
ADC DX, 112 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 115 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 36 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
SBB AL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
