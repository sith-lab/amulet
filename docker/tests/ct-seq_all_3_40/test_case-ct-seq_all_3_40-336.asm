.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC DL 
CMP SI, DX 
CMOVNBE RSI, RDX 
MOVZX RBX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], 124 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RAX 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
IMUL DL 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -87 
CMOVB RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -1836678894 
AND RDX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RCX 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
ADD DIL, 104 # instrumentation
ADC DL, 5 
SETNS BL 
CMP ESI, -121 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -641251534 
SETNS AL 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 0 
XADD BL, CL 
XADD ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RBX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR CL, DL 
CMOVNO CX, AX 
MOVZX DI, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], -19 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDX] 
CMOVNS RDX, RBX 
SETNL AL 
SAHF  
OR AL, -73 
MUL CX 
SBB RAX, -1271136962 
AND RSI, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 73 
CMOVP RSI, RSI 
SETNZ AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
