.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RCX] 
CMOVNBE DI, SI 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -117 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], -67 
NEG AX 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RAX] 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -106 # instrumentation
CMC  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
DEC EDI 
LEA EDI, qword ptr [RDI + RDX + 225] 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 16 # instrumentation
CMOVNB RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RSI] 
ADD AL, AL 
BSWAP EBX 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
INC CL 
DEC BL 
DEC DIL 
ADD DIL, 25 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RAX] 
IMUL DI 
BSWAP EAX 
SUB DL, DIL 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 81 # instrumentation
CMOVS RDI, RDX 
INC SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
