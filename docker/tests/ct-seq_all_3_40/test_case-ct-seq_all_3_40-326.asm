.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], 71 
CMOVS EDX, EDX 
MOVSX AX, DL 
CMOVO ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
CMOVNB RDI, RAX 
CWD  
AND EAX, 111 
AND RDI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDI] 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XOR AX, -12068 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -10 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], -76 
MOVSX EDX, BX 
XCHG SIL, DL 
DEC CL 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EAX 
MUL RAX 
ADD DIL, -49 # instrumentation
SETNL DL 
AND RAX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RSI] 
MOVSX EBX, CX 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], -45 
AND RCX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RCX] 
DEC DL 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDI], RCX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDI] 
MOVSX RAX, DL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], 23 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], 16741 
ADC AX, 9900 
ADC ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
SBB RCX, RDX 
MOV DL, AL 
CMPXCHG DI, DI 
CMP EAX, 122 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
