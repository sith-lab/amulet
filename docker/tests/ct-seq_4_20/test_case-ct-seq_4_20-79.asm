.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DI 
JZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, -1 # instrumentation
CMOVNLE RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], DX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RAX 
ADD EDI, 119 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -42 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RBX] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RSI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -77 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RAX] 
INC BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
