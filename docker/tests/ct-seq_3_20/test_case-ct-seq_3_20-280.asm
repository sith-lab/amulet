.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX RCX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], DI 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDI] 
ADD AX, 16448 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EAX 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 110 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 45 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
CMOVNS BX, DI 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
CMOVL CX, DI 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RBX 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RSI], 123 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
