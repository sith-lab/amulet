.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RBX] 
ADC BL, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -30 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], -16773 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], 52 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], BL 
SBB AX, 10576 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 46 # instrumentation
ADC DL, 9 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -93 
AND RCX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RCX] 
SUB AL, 101 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
