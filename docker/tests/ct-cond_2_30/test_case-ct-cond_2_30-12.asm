.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], DL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RDI 
INC EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RCX] 
ADC EAX, -459374097 
AND RDI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], SI 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], CX 
IMUL AX, DI, -72 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 25 
AND RDI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDI] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RBX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], BL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ESI 
MOV RSI, -452069270831754455 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EBX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], CL 
AND RAX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RAX] 
IMUL EBX 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -74 
MUL DL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -4481 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 109 
BSWAP RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
