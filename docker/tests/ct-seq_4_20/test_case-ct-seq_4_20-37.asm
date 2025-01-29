.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 5 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
INC CL 
JB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, -99 # instrumentation
ADC DX, 109 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RBX] 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 95 
IMUL ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EAX 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ESI 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -102 
AND RCX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -44 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
