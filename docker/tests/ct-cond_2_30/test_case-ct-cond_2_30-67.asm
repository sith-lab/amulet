.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RBX] 
CMP EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RDX 
ADD RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RSI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RAX] 
MUL BL 
MOV AL, -117 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RCX] 
DEC DI 
MUL RBX 
CMOVO EBX, EBX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RAX] 
CMP SIL, 36 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -55 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], 101 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], -85 
CMOVB RDX, RAX 
XCHG ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
SUB EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDX] 
MOV DX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
