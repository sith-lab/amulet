.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RCX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], 51 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 86 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
IMUL DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], -35 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RDX 
AND RDI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDI], -39 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -85 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 29 # instrumentation
CMC  
ADC RCX, 25 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 20 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
