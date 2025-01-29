.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RAX, 30 
MOV EAX, EBX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RBX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], BX 
CMOVL EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
IMUL ESI, EDX, -65 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], BX 
MOVSX RAX, BL 
CMOVNP EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 24 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
CMP AL, -93 
MOV EAX, -27350131 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
SUB AL, -47 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
