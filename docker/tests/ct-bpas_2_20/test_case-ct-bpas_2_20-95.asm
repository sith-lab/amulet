.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
CMOVS DX, SI 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -85 
AND RCX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 68 
SBB BL, DL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RSI 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -62 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 52 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RDI 
ADC RSI, 114 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
