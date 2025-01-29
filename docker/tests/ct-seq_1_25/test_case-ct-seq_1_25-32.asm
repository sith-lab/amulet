.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
ADD ESI, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RAX] 
ADC EAX, 395279316 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DL 
MOVSX SI, DL 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -90 
DEC RAX 
ADC RAX, 1810968237 
ADD DL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
SBB AL, CL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 81 
INC RDI 
ADC EAX, 492202904 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EBX 
ADC EDI, ESI 
MUL DI 
ADD CL, DL 
ADD DL, -102 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DIL 
CMOVNZ RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 51 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 86 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
