.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX], 49 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -77 
SBB EBX, -21 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC EAX, 999857062 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
CMOVNBE RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], DI 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -101 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
