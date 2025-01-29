.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 74 # instrumentation
SBB AX, SI 
MUL RAX 
AND RDI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RBX] 
IMUL DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
SBB SI, AX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
DEC BX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 88 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RAX] 
INC CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DIL 
CMOVNO RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], BL 
MOVSX SI, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], -101 
MOV RSI, 2052757325036692434 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
