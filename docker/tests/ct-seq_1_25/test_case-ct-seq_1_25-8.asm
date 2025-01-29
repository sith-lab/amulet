.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
ADC DI, BX 
ADD ESI, EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], 9 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RCX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
XCHG BL, DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -7 
MOVSX SI, AL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDX] 
ADD DIL, 81 # instrumentation
SBB AX, -17299 
LEA ECX, qword ptr [RDX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EDI 
ADC DIL, -93 
OR BX, 0b1000000000000000 # instrumentation
BSF DX, BX 
LEA RBX, qword ptr [RSI + RBX + 35644] 
CBW  
IMUL EDI, ECX, 122 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
