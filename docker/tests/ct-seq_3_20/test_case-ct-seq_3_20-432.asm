.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], 49 
SBB AL, -49 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
ADC DL, SIL 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RBX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 117 
CMP RAX, 1456748559 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RCX] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
NEG CX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DIL 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
ADD DIL, -127 # instrumentation
CMOVL RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RSI] 
IMUL ESI, ESI 
ADD EAX, -432827004 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
