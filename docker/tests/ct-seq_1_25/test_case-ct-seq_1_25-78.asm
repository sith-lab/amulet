.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 67 # instrumentation
CMOVNP RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RDI] 
CMOVNS RAX, RDX 
CMP EAX, 1531144717 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], SI 
CMOVNO CX, SI 
AND RDX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], 31 
INC CL 
CMOVNP EAX, EAX 
MOV DI, CX 
MOVZX RDI, CX 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], 105 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -90 
SBB DL, DL 
ADC SIL, -11 
MUL DI 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
OR EDX, 1 # instrumentation
MUL AL 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 0 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -18 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
