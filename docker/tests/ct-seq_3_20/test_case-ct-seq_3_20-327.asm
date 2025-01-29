.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG BL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], 36 
AND RAX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RAX] 
CMP DIL, 31 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
ADC DI, 44 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EBX 
LEA RAX, qword ptr [RBX + RBX + 56569] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -116 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -83 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
