.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], DI 
DEC DI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], SI 
CMP ESI, EBX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDI 
ADD SIL, 24 
CMP AL, 35 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], AX 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DI 
ADC AX, 16836 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 32 # instrumentation
CMOVB EDI, EDX 
MOVSX BX, AL 
XCHG AX, BX 
CMOVZ CX, BX 
IMUL CL 
ADD DIL, 61 # instrumentation
CMOVBE EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RDI 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -114 
ADC RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RSI] 
ADD RBX, 111 
CMP RAX, -2133575063 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], 61 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RSI 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 125 # instrumentation
CMOVBE RBX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
