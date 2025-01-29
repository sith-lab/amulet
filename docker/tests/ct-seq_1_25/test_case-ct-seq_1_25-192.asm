.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -32 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], 103 
LAHF  
ADC SIL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RSI] 
MUL SI 
ADD SIL, -109 # instrumentation
CMOVNLE RCX, RAX 
CBW  
CMOVLE RDX, RAX 
CMOVP EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -18 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RCX 
CMOVL ECX, EDX 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EAX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -67 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RDX 
SUB EAX, 678693691 
SBB DL, 101 
AND RAX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RBX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RCX 
MUL AL 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
CMP BL, 109 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
