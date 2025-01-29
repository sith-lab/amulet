.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RCX] 
ADD RAX, 482523453 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 76 
DEC RCX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RSI] 
CMOVO EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RBX] 
CMOVO ESI, EDX 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
SUB EAX, -149293415 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RCX] 
SUB AL, 60 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CWD  
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
