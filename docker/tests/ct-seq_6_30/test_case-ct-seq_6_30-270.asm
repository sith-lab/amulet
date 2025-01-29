.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DIL 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
MUL DL 
SUB AL, DL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
ADD RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDI] 
MOV EDI, -156923467 
DEC EDI 
AND RSI, 0b1111111111111 # instrumentation
JMP .bb_main.2 
.bb_main.2:
NEG RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RSI] 
IMUL EDI 
OR DX, 0b1000000000000000 # instrumentation
BSF DX, DX 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], BL 
IMUL DI, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RSI] 
NEG DI 
MOVSX DX, AL 
SBB AX, -6204 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
JNL .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
CMP AX, 31559 
MUL EDX 
ADC SIL, -98 
JMP .bb_main.5 
.bb_main.5:
MOVSX RDX, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
