.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DL, 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], DI 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDI], 50 
AND RSI, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], SIL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RBX] 
SUB RSI, 2 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], 85 
AND RSI, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RSI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDI] 
ADD AX, 12432 
CMOVNP CX, CX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
