.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 25 # instrumentation
SBB EDI, -1 
SUB EDI, 60 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -30093 
AND RCX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RCX] 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -56 # instrumentation
CMOVBE DI, DX 
OR AX, 0b1000000000000000 # instrumentation
BSF CX, AX 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
CMP EAX, -958022459 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RSI] 
CMOVS ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -68 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
SBB EAX, 64 
MUL DI 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 115 
ADC RAX, 1812993280 
CMOVO RBX, RDI 
MUL DI 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], 8 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -110 # instrumentation
CMC  
SUB DX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], 30 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
LEA RAX, qword ptr [RAX + RAX + 60457] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -41 
AND RDX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
