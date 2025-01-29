.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RDX] 
CMOVS RCX, RBX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], DI 
CMOVNL BX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], -12 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -53 # instrumentation
CMOVNBE AX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -3 
MOVSX RDX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
SUB SIL, -41 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 50 
ADC AL, 77 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RDX 
ADC EAX, -1271810359 
AND RCX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RCX] 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RSI] 
INC CL 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], SI 
MOVSX RSI, BL 
CMOVO AX, CX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 50 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RBX] 
ADD DIL, 52 # instrumentation
CMOVNB RCX, RBX 
CMOVS BX, DX 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
