.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], -86 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RBX] 
DEC DI 
SUB CL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
JNBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, 50 # instrumentation
XCHG RBX, RAX 
ADC EAX, 720808793 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -58 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RSI] 
CMP RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 27 # instrumentation
XCHG RSI, RDX 
CMOVNP DI, SI 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], AX 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RDX 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB BX, 59 
CMOVZ RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RSI], -94 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
MOV CX, -15911 
CMOVNO EDX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
