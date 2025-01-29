.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -74 # instrumentation
MOVSX BX, DL 
CMOVNP DI, DX 
DEC DIL 
IMUL AL 
ADC AL, 4 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 27 # instrumentation
SBB ECX, 24 
SUB EBX, EDI 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
MOVZX EDX, SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -31 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DL 
SBB AL, -59 
CMOVNP DX, DI 
JMP .bb_main.2 
.bb_main.2:
NEG EAX 
ADD ECX, -20 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 101 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -72 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, 116 # instrumentation
SBB RAX, -29 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EAX 
CMP AX, 12710 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RDI] 
CMOVB CX, BX 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -45 # instrumentation
CMOVO EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
