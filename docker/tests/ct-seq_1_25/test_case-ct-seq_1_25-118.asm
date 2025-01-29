.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], BX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDX] 
CMOVB BX, SI 
AND RCX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RCX] 
ADC RAX, 1452584614 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], ECX 
AND RDI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 30 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RCX] 
INC AL 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
BSWAP EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -45 
CMOVP RDX, RDI 
ADC DX, -25 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 90 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], ECX 
ADC BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
