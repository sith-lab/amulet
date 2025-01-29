.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CX, 0b1000000000000000 # instrumentation
BSF AX, CX 
ADD SIL, 44 # instrumentation
CMOVO DI, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RCX] 
CMP SI, 72 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -101 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], ECX 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DIL 
CMOVNB RSI, RAX 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD AX, -19415 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], -69 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EBX 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -39 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 65 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 39 
CMOVL RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], BX 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
