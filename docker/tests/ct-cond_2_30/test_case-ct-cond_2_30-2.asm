.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], -78 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
CMOVL EDI, EAX 
CMOVO RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 27 
IMUL EDX, EAX, 11 
CMP RDI, 40 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], 1 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDX 
CMOVL SI, SI 
STC  
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SAHF  
MUL AX 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDI] 
CMOVNB DX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RBX] 
SBB AL, DL 
CMOVBE EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDI] 
CMP EAX, -1246406658 
CMOVZ RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
