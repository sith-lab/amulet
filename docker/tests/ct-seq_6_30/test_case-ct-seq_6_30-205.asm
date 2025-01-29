.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RDI, RDX 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], -89 
CMOVLE CX, SI 
ADD EAX, 1113791964 
ADC CX, -112 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -41 # instrumentation
SBB RBX, RAX 
CMOVNZ ESI, EBX 
DEC SIL 
CMOVNO BX, CX 
AND RDI, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
JNB .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD SIL, -73 # instrumentation
CMOVBE DI, AX 
ADC DI, 10 
CMP DX, 79 
MOV BL, DL 
JMP .bb_main.3 
.bb_main.3:
MOV DL, AL 
IMUL CL 
ADC DL, BL 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -125 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -98 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], CX 
JMP .bb_main.5 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RSI 
MUL AL 
SUB RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], SI 
ADD AX, 2956 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -107 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
