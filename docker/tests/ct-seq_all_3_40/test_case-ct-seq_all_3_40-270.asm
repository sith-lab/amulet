.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB BX, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], 8 
OR BL, AL 
MOV RCX, -4407920589086130532 
STC  
CMOVNP BX, SI 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], -41 
SETLE AL 
AND RDX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], BX 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RAX] 
TEST SI, -19924 
SETLE DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], AL 
AND AL, -44 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RDX] 
TEST EAX, 1387663528 
ADD AX, -88 
XADD ECX, EDX 
MOV AX, -3523 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], BL 
JMP .bb_main.2 
.bb_main.2:
NEG AL 
AND RDX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RDX] 
AND AL, -105 
MOVSX EAX, DL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], -14 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
ADD DIL, -110 # instrumentation
NOT EDI 
ADC ECX, EAX 
TEST AL, -103 
CMOVLE CX, BX 
CMOVNB ECX, EDX 
OR EAX, -7694319 
XOR EAX, 702919711 
NOP  
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -60 
MOVZX EDX, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -59 
XOR EDI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
