.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
CMP RDX, -27 
STC  
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], DX 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, -33 # instrumentation
CMOVBE AX, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
CMP EDX, EDX 
ADC DX, 8 
ADC SIL, 48 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -71 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], AL 
SBB AX, -31962 
ADD DIL, 5 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
SBB DL, BL 
ADD DIL, CL 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], SIL 
CWDE  
ADD SIL, 31 
AND RSI, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RSI] 
CMOVNP RDX, RBX 
DEC RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], DI 
SUB EAX, 1688230339 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
CMOVP EAX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
