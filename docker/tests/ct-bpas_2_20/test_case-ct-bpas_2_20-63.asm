.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -106 # instrumentation
ADC DI, SI 
AND RSI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
SUB ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], CX 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -123 
IMUL RCX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDX] 
XCHG SIL, DL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -55 
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], 38 
CMP AL, CL 
XCHG RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
