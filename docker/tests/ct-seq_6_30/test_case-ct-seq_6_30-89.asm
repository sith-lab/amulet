.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -7 # instrumentation
ADC AX, -23981 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
CMP EBX, -83 
AND RBX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RBX], -48 
MOV AL, CL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDX] 
SAHF  
CMOVNS DI, DX 
CMP DI, -50 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], CL 
JNB .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD SIL, -25 # instrumentation
CMOVLE RSI, RDX 
CMOVBE EAX, EAX 
DEC ECX 
AND RDI, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RDI], -120 
JMP .bb_main.3 
.bb_main.3:
ADD RAX, -189877999 
MUL SIL 
ADC RAX, -1164631354 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], 113 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 48 # instrumentation
SBB AX, -13805 
DEC DX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], BL 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
IMUL RBX 
NEG EAX 
OR DL, 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 53 
CMOVNP RCX, RBX 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -128 
CMOVNLE AX, BX 
CMOVNBE DI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
