.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -75 # instrumentation
CMOVLE ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
ADC EDI, -108 
TEST EAX, -1439281824 
NOT ECX 
TEST DL, -21 
XOR AX, 31436 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -110 
CMOVNS RBX, RDI 
SETNP AL 
LEA CX, qword ptr [RDI] 
MOVSX RDX, BX 
MOV SI, -2197 
NEG RDI 
STC  
SUB EAX, 1445574482 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RSI] 
OR EAX, ESI 
LEA DX, qword ptr [RDX] 
XADD AL, AL 
MUL ECX 
SUB CX, CX 
CMOVP RCX, RDI 
MOVSX EDI, BL 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], -73 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RAX] 
ADD AL, -50 
AND RDI, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDI] 
NOT ECX 
OR EDI, 117 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
TEST DI, -21046 
CMOVNP EDX, EDI 
MUL RCX 
OR DX, -64 
ADC AX, 32341 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
