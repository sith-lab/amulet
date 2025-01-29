.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], DI 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], -3 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RCX] 
MOV RDI, RBX 
CMP ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RSI] 
CMOVB AX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 1319350198 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDX] 
ADD DIL, -7 # instrumentation
SBB EAX, 386621165 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], 77 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -33 # instrumentation
CMC  
SUB AL, 10 
AND RBX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RBX] 
MUL CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -21 
CMOVO BX, BX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -113 
STC  
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
ADC DL, DIL 
CMP AL, -51 
CMOVNS AX, CX 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
