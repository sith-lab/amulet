.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -52 # instrumentation
SBB RAX, -1091697216 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], -123 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], 34 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 32 
SBB EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -95 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], DX 
AND RBX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], CL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -37 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DIL 
AND RDX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RCX 
MUL RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDI] 
MOV DL, BL 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], ECX 
INC DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], 27 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
