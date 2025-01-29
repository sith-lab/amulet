.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], SI 
CMOVNO DI, CX 
ADD AX, BX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -118 
CMOVNP DX, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 71 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], -33 
CLD  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -7 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
CMOVBE RCX, RDX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EBX 
MUL BL 
DEC EAX 
AND RSI, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RSI] 
CMOVBE DX, DI 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 35 
CMOVS RBX, RDI 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -4 
CBW  
JBE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RDI] 
CMP ECX, 42 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
JMP .bb_main.5 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -94423610 
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
SUB AX, -21 
AND RAX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 19 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
