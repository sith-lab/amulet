.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DI, BX 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RBX], -123 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RCX], -48 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], 71 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RSI 
XCHG EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], 39 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EAX 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], CX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -41 
AND RCX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RSI] 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RAX] 
CMOVL ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], AL 
MOV RSI, RCX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
