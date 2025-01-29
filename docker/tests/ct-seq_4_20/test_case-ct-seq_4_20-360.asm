.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -14 # instrumentation
CMOVNBE CX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], ECX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RSI] 
ADD DIL, 55 # instrumentation
SBB RAX, -47692201 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -66 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
ADC RAX, 786599996 
ADD AL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RSI] 
CWD  
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], DX 
MUL DL 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], -115 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], -51 
CMOVLE AX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
