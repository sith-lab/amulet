.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC BX 
ADD RAX, 1567379225 
AND RSI, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], -92 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RAX] 
SBB SI, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], CX 
CMOVBE EDI, ESI 
SUB EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -29138279 
ADD EAX, -451603146 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
ADD EDX, ECX 
SBB RSI, 86 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RDX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -26 
ADC AX, -21394 
ADC EBX, 45 
SUB AL, 124 
CMOVBE RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EAX 
CMOVBE RDX, RDX 
SBB DX, 1 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
