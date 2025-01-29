.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
ADD SIL, 19 # instrumentation
SBB RAX, 107 
AND RCX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RCX] 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], -13 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -13 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RAX] 
SUB RCX, 119 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 90 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
