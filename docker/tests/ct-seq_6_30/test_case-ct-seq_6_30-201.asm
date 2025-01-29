.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RDX, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -73 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -63 
CLD  
MOV CX, -6316 
CMOVP AX, AX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
SBB SIL, -29 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -39 
CMOVNO RAX, RBX 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EBX 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 102 # instrumentation
ADC RAX, 689031188 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 106 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], SI 
CMOVNL ESI, ECX 
STC  
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 47 # instrumentation
CMOVNBE DI, SI 
SUB BX, 69 
LOOPNE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], 115 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 119 
CMOVNB RDI, RAX 
ADC AX, -8651 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
