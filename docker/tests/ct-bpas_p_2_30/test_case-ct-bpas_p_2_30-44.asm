.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RDX 
ADC DL, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RCX] 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
ADD SIL, -71 # instrumentation
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX RDI, BL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
CMOVNBE EAX, ESI 
MOV DIL, 37 
CMOVB RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RCX 
ADD ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], AX 
ADD ECX, -3 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
CMOVO RDX, RAX 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
CLD  
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
ADD RAX, -641254238 
CMOVNL RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -124 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
