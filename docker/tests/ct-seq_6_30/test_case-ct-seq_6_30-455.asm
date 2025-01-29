.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 97 
ADC RDX, -9 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMP RAX, 868851305 
ADD EDI, ESI 
CMOVNBE RDX, RCX 
ADC DI, -72 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -54 # instrumentation
CMOVL RCX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RDX 
SBB RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 89 
NEG SI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 41 # instrumentation
CMOVP BX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RAX] 
MUL DI 
ADC DIL, AL 
CMOVP DI, DI 
MOV DIL, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EDI 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 5 # instrumentation
CMC  
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 74 
CMP DL, 45 
CMP RAX, 514499104 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
