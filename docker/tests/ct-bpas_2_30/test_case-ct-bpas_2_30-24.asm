.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP CL, CL 
ADC RAX, 84119752 
AND RAX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RAX] 
CMOVLE RCX, RCX 
CMOVNZ CX, BX 
SBB CL, CL 
AND RSI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX], 90 
AND RCX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RCX], 93 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDX] 
LEA RBX, qword ptr [RBX + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD SIL, -119 # instrumentation
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RBX] 
MOV DX, 8700 
CLD  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -37 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -18 
OR EDX, 1 # instrumentation
MOV CL, -118 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 119 
CMOVNO RDX, RCX 
SBB AL, -68 
CMP SI, SI 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
CMOVNP ESI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
