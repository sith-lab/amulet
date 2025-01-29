.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], AX 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], 91 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RSI] 
CMOVNLE RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], DI 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], BL 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], -49 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 64 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -4 # instrumentation
ADC RAX, -74146682 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
SBB AX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
