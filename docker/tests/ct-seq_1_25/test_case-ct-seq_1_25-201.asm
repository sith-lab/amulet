.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
INC RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 56 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], DI 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RDI] 
CMOVNB EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
STC  
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
ADC CX, SI 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
STD  
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EDX 
STD  
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], 14 
OR DI, 0b1000000000000000 # instrumentation
BSF DX, DI 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], SIL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], CL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -89 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
