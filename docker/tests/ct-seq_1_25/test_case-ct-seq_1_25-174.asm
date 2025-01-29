.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 53 # instrumentation
SBB BL, AL 
MUL DL 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RAX] 
MUL SIL 
SUB CL, SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDI] 
ADD BL, SIL 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], 4 
AND RCX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDI] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ESI 
NEG DL 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DIL 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 69 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
IMUL DIL 
OR DX, 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -11 
MOV SI, DX 
CMOVNO DX, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
