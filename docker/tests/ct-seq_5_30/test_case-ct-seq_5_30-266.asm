.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DI, SI 
ADC AL, BL 
ADC RAX, -643202705 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RDX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 53 
CMP DIL, CL 
ADC RAX, -200740627 
SUB RBX, 71 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
LEA RAX, qword ptr [RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -100 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
NEG CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RDX] 
CLC  
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -31510 
SUB DIL, AL 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
