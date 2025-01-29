.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL DL 
NEG RDI 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], 103 
CMOVZ EBX, ECX 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RSI] 
MOVZX SI, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], SI 
ADD RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RSI] 
ADD DIL, 44 # instrumentation
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -95 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 96 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], BX 
CMP RSI, RDI 
CMOVB CX, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 114 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
