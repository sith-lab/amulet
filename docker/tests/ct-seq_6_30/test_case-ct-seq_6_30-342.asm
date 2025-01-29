.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], 66 
CMOVS RSI, RDX 
ADC EAX, EAX 
SUB EAX, 1137988016 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, -46 # instrumentation
CMOVNL AX, DI 
SBB EAX, -1951141771 
CMOVNO ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], -113 
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX], -101 
NEG BL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 52 
ADC SIL, -66 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
ADD SIL, -30 # instrumentation
CMOVL DX, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
SUB DIL, 33 
CMOVBE RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RDX] 
ADC EAX, -1927954685 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
MUL DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], SI 
MOVZX ECX, SIL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RDI] 
JMP .bb_main.5 
.bb_main.5:
SUB RCX, 63 
MOVSX RAX, DL 
CMOVNB EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], 123 
ADD DX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
