.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP RCX, RSI 
MOV RBX, RAX 
ADD RCX, RSI 
MOVSX SI, BL 
SBB AL, -51 
AND RSI, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RSI] 
ADD DIL, -106 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RDX 
JMP .bb_main.2 
.bb_main.2:
XCHG RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RAX] 
CMOVZ ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
IMUL EDX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RSI 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
ADC BL, -126 
AND RSI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RSI] 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX], 41 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RDI 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX], -62 
MUL EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
