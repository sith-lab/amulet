.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 93 # instrumentation
CMOVLE DI, DI 
SUB BX, BX 
AND RSI, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], -86 
CMOVLE BX, SI 
SUB RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EAX 
ADD DIL, -78 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -40 
CMOVBE RAX, RBX 
CMP AL, 58 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDX 
CMP ESI, 110 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
CMP DIL, 28 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
