.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD EAX, -1617329416 
CMOVBE EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], CX 
AND RBX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RBX] 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -71 # instrumentation
CMOVNZ DI, DI 
SUB DI, 11 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RCX] 
DEC DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
XCHG BL, BL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RCX] 
ADD DIL, 83 # instrumentation
ADC BL, 71 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
SUB CL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RBX] 
SBB RAX, -1751420112 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DI 
JMP .bb_main.4 
.bb_main.4:
CLD  
AND RDI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDI] 
ADD AL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RCX] 
SUB AX, 78 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RSI] 
MOV RCX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
