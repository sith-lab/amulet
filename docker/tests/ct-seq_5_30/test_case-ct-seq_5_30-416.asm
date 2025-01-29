.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -88 
STD  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], ECX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -51 
SUB BX, -99 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -31 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RDI] 
ADC BL, 37 
JMP .bb_main.1 
.bb_main.1:
NEG RDX 
SBB EAX, 135857622 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
CMOVNZ EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], -33 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], -100 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RSI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RSI] 
INC ESI 
CMOVB RDX, RCX 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 94 # instrumentation
INC RAX 
ADC RAX, -1156967019 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -38 # instrumentation
CMOVNB DX, SI 
IMUL EDI, ESI, 33 
AND RDI, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RDI] 
OR AX, 0b1000000000000000 # instrumentation
BSR SI, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 106 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
