.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CDQ  
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], BL 
MUL DIL 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RBX], -125 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], ECX 
MOVZX BX, CL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], 75 
CMOVNO DI, AX 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -79 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
CMOVNS RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RCX] 
MOVZX DI, DIL 
IMUL ECX, ECX, 96 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], -96 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
CDQ  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
