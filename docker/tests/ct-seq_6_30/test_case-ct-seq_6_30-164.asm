.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 12 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -29015986 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], ECX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EAX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], 75 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 122 
ADC RAX, 1139424834 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
AND RDI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDI] 
MOVZX ECX, AL 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -34 
ADC CL, SIL 
CMOVNL BX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -69 
JNP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD DIL, 21 # instrumentation
ADC SIL, -65 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], CX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EAX 
SUB DIL, 1 
JNS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
IMUL EDX, EBX 
MOV CL, DL 
ADD EAX, ESI 
ADD ECX, 44 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CMP AX, 18056 
OR BX, 0b1000000000000000 # instrumentation
BSF DI, BX 
ADD RSI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
