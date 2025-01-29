.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
XCHG ECX, EAX 
CLD  
MOV CL, -38 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], CL 
INC SI 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], 62 
AND RBX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RBX] 
CMOVNBE RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EBX 
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
ADD DIL, 68 # instrumentation
CMOVNP RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -128 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 119 
MUL BX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -12589 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], 57 
SUB AX, -8769 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
