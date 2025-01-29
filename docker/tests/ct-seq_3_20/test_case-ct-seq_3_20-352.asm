.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
CMOVNO EDX, ECX 
LAHF  
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 75 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EAX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
DEC BL 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], -24 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 8 # instrumentation
SBB RDX, -44 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
