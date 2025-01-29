.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -122 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 88 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -34 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -73 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], 31 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EBX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RDI 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EBX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 104 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EAX 
CMP RDI, 0 
SUB ECX, EBX 
CMOVL ESI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
