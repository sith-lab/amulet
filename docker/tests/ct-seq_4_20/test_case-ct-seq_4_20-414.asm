.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], SI 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RDX] 
LEA AX, qword ptr [RDX + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 33 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RAX] 
SBB EDI, 19 
XCHG EAX, EAX 
CMOVL ECX, EDI 
JMP .bb_main.2 
.bb_main.2:
SAHF  
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 124 
CMP RAX, -392244551 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RDI 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDI] 
CMOVBE RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
ADD SIL, 61 # instrumentation
CMOVBE SI, DI 
IMUL RAX, RBX 
ADD SIL, 0 # instrumentation
CMOVBE EDX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
