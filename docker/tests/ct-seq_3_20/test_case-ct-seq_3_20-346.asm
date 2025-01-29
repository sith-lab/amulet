.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 104 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], AX 
SBB SI, 69 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], ESI 
MUL DL 
ADD AL, -57 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RAX] 
ADD SIL, -57 # instrumentation
CMOVNP EDX, ESI 
ADC RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
MOV AL, 9 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX], 32 
ADD DIL, -92 # instrumentation
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -28 # instrumentation
SBB BL, SIL 
MOV EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -29 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -27 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
