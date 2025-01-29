.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 8 # instrumentation
CMOVBE BX, DI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RBX] 
MUL EAX 
IMUL SI, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, 89 # instrumentation
ADC EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ECX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
SUB AL, -86 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
ADD ESI, -12 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
DEC BL 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
ADD AL, CL 
AND RDI, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RDI] 
CMP EAX, -122 
SBB DI, CX 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], BX 
SUB DIL, 119 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -32 
ADD EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 8 
ADD DIL, -94 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 82 # instrumentation
CMC  
SUB RAX, -105 
ADC AL, AL 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
