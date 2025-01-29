.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -21 # instrumentation
CMOVNLE CX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -94 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], 75 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
SUB AL, DL 
ADC DI, SI 
JMP .bb_main.2 
.bb_main.2:
ADD AL, 26 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -109 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -95 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -27 
CMOVBE RAX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
