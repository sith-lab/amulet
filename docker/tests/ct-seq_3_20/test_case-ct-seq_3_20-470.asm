.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EAX 
BSWAP EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], -93 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RCX] 
CMP RAX, 1466797921 
AND RBX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 77 
AND RSI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RSI], -81 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
SUB BL, CL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RDI] 
CMOVB ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RBX] 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -113 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
