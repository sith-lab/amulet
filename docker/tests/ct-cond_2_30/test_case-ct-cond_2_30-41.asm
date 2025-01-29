.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -24 # instrumentation
LAHF  
CMOVNP DI, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -110 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -101 
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
IMUL ECX, EAX 
ADD DI, 28 
CMP RDX, 19 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
ADD DIL, -46 # instrumentation
CMOVBE EBX, EDX 
INC DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 89 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MUL RDI 
MOV RDI, -5975374359296784673 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RCX] 
SUB EDX, 42 
MUL BL 
ADD RSI, RBX 
CMOVNP RBX, RDI 
CMP RAX, -327953864 
CMOVNZ RDI, RDI 
CMOVP DX, CX 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RCX 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -24 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
