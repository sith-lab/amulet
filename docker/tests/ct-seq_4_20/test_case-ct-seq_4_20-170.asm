.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RSI] 
STC  
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
JNO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CMP RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 16 
AND RAX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], ESI 
ADD RBX, -3 
AND RDI, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDX 
AND RSI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDX] 
ADD SIL, -45 # instrumentation
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
SUB AX, 4 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RBX 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
