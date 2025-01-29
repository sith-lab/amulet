.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RBX], -83 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], ESI 
MOVZX EDX, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
XCHG AX, AX 
SUB DL, SIL 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 7 # instrumentation
CMOVNP CX, BX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 17 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
ADD SIL, 95 # instrumentation
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 107 # instrumentation
CMOVNLE EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], DI 
AND RDX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 43 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -60 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
