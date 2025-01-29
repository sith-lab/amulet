.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], 79 
STC  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 25 
CMP RCX, RSI 
CMOVNB EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
XOR DX, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EDI 
CMOVS RAX, RBX 
CMP EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RDX 
JMP .bb_main.1 
.bb_main.1:
ADD DL, -71 
AND RSI, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RSI] 
CMP AL, -60 
CMP CL, BL 
SETNP AL 
XOR DI, DX 
CLD  
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
ADC RAX, 1870201559 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 1992752404 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 86 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], AX 
LEA DX, qword ptr [RAX] 
CMOVS RAX, RBX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RCX] 
DEC CX 
AND AL, -34 
ADC DIL, AL 
CMP AL, -3 
CMPXCHG RDX, RDI 
AND RAX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RAX] 
TEST CL, CL 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], 79 
XOR RAX, -907675793 
AND DL, SIL 
ADD RDI, RDX 
ADD AL, -23 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
