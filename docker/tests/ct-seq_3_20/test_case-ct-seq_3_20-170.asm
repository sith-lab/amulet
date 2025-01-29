.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 24 # instrumentation
CMC  
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
CMOVS DI, BX 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 88 
AND RCX, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RCX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -2 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 61 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], 75 
SUB DI, SI 
AND RSI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EBX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EBX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDX], 4 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
MUL AL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
