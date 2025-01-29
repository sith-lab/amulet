.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 106 
SAHF  
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 45 
XCHG ESI, EAX 
SUB RAX, -1423782571 
AND RAX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RAX] 
ADD DIL, -123 # instrumentation
CMOVNZ AX, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RDX] 
NEG BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
CMOVO AX, AX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -118 
MUL EDX 
AND RAX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RAX] 
ADD DIL, -82 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
ADC AL, 79 
AND RSI, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], AX 
CMOVNS ESI, ECX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -94 
MUL DL 
ADD EAX, 55 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -40 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
