.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -122 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RBX] 
CMC  
CMP EAX, EDX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 12 # instrumentation
CMOVNB EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], -50 
AND RDI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -126 # instrumentation
CMOVNB DI, DX 
AND RBX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RBX] 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP RSI, 123 
CMOVNLE EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 104 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EDX 
CMOVNO DI, SI 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
IMUL RBX, RCX 
ADC EAX, 1291731032 
JNBE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ECX 
STC  
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RBX] 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CDQ  
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
