.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
AND RCX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RCX] 
CMOVNO RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RBX] 
CMP ESI, 89 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RAX] 
SUB RSI, 46 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 79 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RCX] 
ADC AL, 64 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], 28 
ADC SI, DI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -61 # instrumentation
SBB EAX, 814047001 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
IMUL RBX, RDX, -83 
CMP DX, DX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RDX 
SBB SI, DI 
AND RDX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDX] 
MOV DX, SI 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
CMOVP RDI, RDI 
SUB RSI, RSI 
IMUL RCX 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -123 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
