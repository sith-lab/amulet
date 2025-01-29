.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], -17 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], SI 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EDX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DIL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RBX] 
BSWAP ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], CX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -104 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], SI 
AND RCX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RCX] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EDX 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
