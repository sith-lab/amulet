.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
BSWAP RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
INC EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -87 # instrumentation
ADC EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
CMOVBE DX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], ECX 
CMOVBE CX, BX 
ADD AX, AX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
CMOVB ECX, EBX 
CMOVB CX, DX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -85 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RSI] 
CDQ  
SBB AL, -83 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RCX 
CMOVNL EDX, EDX 
ADD BL, CL 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
