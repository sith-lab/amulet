.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -112 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], CL 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EBX 
CMOVNS CX, DX 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
INC EBX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
BSWAP RDI 
MOV SIL, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
MOV CL, -81 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], 17099 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -62 
ADD BL, -9 
SBB EDI, -32 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
ADD SIL, -6 # instrumentation
CMOVBE DI, CX 
AND RDI, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
