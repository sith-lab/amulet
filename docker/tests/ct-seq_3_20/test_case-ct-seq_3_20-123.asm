.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -12 
SBB AL, 95 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RCX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], 13 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 20 # instrumentation
CMOVNB EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 55 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -89 
JMP .bb_main.2 
.bb_main.2:
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDI] 
SUB SIL, DIL 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 31895 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDI] 
BSWAP RSI 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], 57 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
