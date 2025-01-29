.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RSI] 
ADC BX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 47 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DI 
AND RSI, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RBX] 
MOV DIL, -112 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
CMOVZ ECX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDI] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 121 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RCX 
CMOVNB EDX, EDX 
MOVSX ESI, BX 
ADC EAX, -1010962488 
MOV RSI, 3874986618174493967 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ESI 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 111 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
