.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], BX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -97 
AND RCX, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RDX] 
JNO .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDX] 
ADC EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], DX 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], CX 
JL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RDX] 
CMP AX, 15217 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -71 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RSI 
XCHG DL, BL 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -125 # instrumentation
CMOVNBE RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RSI] 
MOVSX ECX, AL 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 118 
CMOVNB EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -85 
SUB EDX, EDX 
JMP .bb_main.5 
.bb_main.5:
MOV BX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 49 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
CMOVP DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
