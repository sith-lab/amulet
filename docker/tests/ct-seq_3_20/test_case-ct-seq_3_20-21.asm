.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RDI 
AND RDI, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RDI] 
CLD  
AND RSI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RSI], 22 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
CBW  
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
CMOVS DI, BX 
CMOVNBE RSI, RDX 
ADC DL, CL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
INC CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], 0 
ADC RSI, RDI 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 47 
BSWAP ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
