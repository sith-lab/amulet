.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -22 # instrumentation
ADC RAX, 1365382822 
MOV ESI, ECX 
CMOVNLE AX, AX 
CMC  
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RBX] 
CMOVBE RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RCX] 
CMP RAX, 1400053060 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RAX 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], BX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RBX 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], BL 
CMOVBE RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], ESI 
CMP BX, 77 
AND RDI, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RSI] 
INC SI 
MOVSX ESI, BL 
ADC DIL, 105 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
