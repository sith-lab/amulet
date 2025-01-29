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
ADD SIL, -67 # instrumentation
CMOVNL RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RSI] 
DEC RAX 
CMOVO RCX, RCX 
CMOVNZ ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
LOOPE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD RAX, 823895087 
AND RBX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RBX] 
SUB DL, AL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RBX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RDI 
ADD EAX, -115 
ADC AL, 49 
SUB ECX, -95 
AND RSI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
MOVZX RSI, BX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 436660969 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 30 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], BL 
ADD AX, 13983 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], AX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 37 # instrumentation
SBB EAX, ECX 
JMP .bb_main.5 
.bb_main.5:
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
