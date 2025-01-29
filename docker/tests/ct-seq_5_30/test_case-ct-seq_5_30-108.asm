.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDI] 
IMUL SI 
AND RDI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDI] 
CMOVNB BX, BX 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 31 
AND RAX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RAX] 
ADD CL, SIL 
MUL RDX 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], 68 
CMOVNZ RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
CMOVNLE RCX, RDX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -100 # instrumentation
ADC EAX, -264340096 
AND RDX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDX] 
CMOVNBE ECX, ESI 
CMOVLE RSI, RDI 
CMOVBE CX, CX 
ADD ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RCX] 
SBB RDI, RSI 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], AX 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -107 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
OR DL, 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RBX] 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MUL RAX 
CMOVNB EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -125 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 112 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
