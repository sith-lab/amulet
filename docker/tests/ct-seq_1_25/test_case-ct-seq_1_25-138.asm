.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDI 
CMOVNBE RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], -21 
CMOVNP RAX, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RCX] 
LEA RSI, qword ptr [RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -84 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], AX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -20 
SBB DI, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RAX 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -53 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DIL 
AND RSI, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
ADC ESI, -15 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 97 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
