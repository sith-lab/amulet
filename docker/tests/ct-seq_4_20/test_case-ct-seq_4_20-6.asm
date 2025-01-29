.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 34 # instrumentation
SBB ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -38 # instrumentation
ADC EBX, -26 
XCHG RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RBX] 
ADC ECX, -54 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], -23 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], -119 
MOVZX RSI, AX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 646967190 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RBX] 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -1705278952 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
