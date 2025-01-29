.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -115 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], DX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 107 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RDI 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB AL, 74 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RBX] 
CBW  
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 25 
CMOVZ EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], -52 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -76 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
