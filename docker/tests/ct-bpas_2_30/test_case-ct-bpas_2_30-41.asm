.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
MOVSX BX, CL 
ADD ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RCX 
SUB AL, 51 
ADC AL, 65 
INC DX 
CMOVNL SI, AX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
SBB DIL, 109 
INC CL 
LEA ESI, qword ptr [RCX] 
CMP RCX, -128 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 12 
AND RCX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -62 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
CMOVNS EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
ADD DL, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RSI] 
CMOVL SI, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EBX 
MOV AL, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
