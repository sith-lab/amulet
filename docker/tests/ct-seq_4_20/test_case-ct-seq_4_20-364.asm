.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -37 # instrumentation
CMOVB EDX, EBX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RDI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RBX] 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -46 
CMOVNLE ECX, ECX 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -119 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
ADD DIL, -23 # instrumentation
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -70 
IMUL ESI 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RDI 
CMP AL, -99 
AND RDI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDI], -98 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -100 # instrumentation
CMOVBE EDI, ESI 
CMP CL, -43 
CMOVNB CX, BX 
CMP RAX, -336547148 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 88 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -38 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
