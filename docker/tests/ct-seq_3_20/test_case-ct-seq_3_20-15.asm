.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
ADC EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RAX] 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -49 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -110 
ADD SI, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], SIL 
CMP AX, 15407 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
