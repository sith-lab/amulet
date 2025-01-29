.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDI] 
ADD EDI, -18 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 79 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RDX] 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
IMUL SIL 
ADD DIL, 68 # instrumentation
CMOVNZ EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RCX 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], -54 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -104 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 115 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
AND RAX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 90 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
