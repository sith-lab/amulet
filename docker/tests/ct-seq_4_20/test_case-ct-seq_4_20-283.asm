.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RSI] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], SI 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], CL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
ADC BL, 106 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
CMP DL, -25 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
ADD DIL, 12 # instrumentation
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -66 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -76 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], BL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RSI], -103 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
