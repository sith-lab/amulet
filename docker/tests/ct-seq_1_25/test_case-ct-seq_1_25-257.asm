.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], 106 
CMOVBE EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -43 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDX 
ADD SIL, 69 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RSI] 
MOVZX EAX, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDX] 
MOV ECX, EDI 
CMP CL, AL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], SIL 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 126 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RBX] 
SUB ESI, -22 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
CMOVNP RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RDX] 
CMP DL, 15 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
MOVSX RBX, BX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 52 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -38 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
