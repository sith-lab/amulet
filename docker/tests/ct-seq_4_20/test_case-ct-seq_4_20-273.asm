.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], DX 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -95 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], -57 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], 26 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], 28 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -123 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -43 
MOVSX RSI, DX 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
CMOVB BX, BX 
SBB EAX, 941337249 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
