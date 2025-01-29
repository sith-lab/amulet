.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RDI] 
NOT RDX 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
SUB AL, -13 
AND RAX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
SUB AL, AL 
AND RBX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RBX] 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -1 # instrumentation
SBB ECX, -45 
AND RBX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
XOR ECX, -73 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 81 
CMP RAX, 1462151938 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -97 # instrumentation
CMOVS ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], -973613055 
AND RAX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], EDI 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDX] 
ADD SIL, 56 # instrumentation
SBB AX, -4839 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RSI] 
SUB EBX, 127 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RSI] 
CMOVLE RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RSI] 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], EBX 
ADD EDI, -116 
TEST CL, CL 
ADD DL, CL 
CMPXCHG RAX, RSI 
SUB AX, 31634 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], BX 
AND EAX, -1115593137 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
