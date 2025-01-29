.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RCX 
CMPXCHG RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], SI 
CMP DL, 71 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -52 
ADD SIL, 12 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], -113 
SBB RSI, 122 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], AL 
OR AL, 99 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], RCX 
SETNP BL 
AND RBX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
CMPXCHG BX, DX 
OR EAX, 1891869903 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RSI] 
TEST RAX, -1917565259 
AND RSI, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RSI] 
CWDE  
AND ECX, ESI 
XOR RBX, 92 
SETB DL 
ADD DIL, DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RBX], RDX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
NOT DIL 
SUB RCX, RCX 
MOV ECX, 699924699 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDI] 
SETNBE CL 
SUB AL, DL 
CBW  
OR EAX, 1843116305 
ADC BL, -28 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RDX] 
ADC ESI, -84 
CMOVNS DX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
