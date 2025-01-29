.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 40 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 14 
CMP CL, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RSI] 
CMOVL ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RCX] 
SUB AL, 95 
CBW  
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDI 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EDX 
MOV RDI, 6794616041180139456 
SBB DI, 6 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], 108 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
