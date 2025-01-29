.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RDX] 
NEG DL 
CWD  
MOV BL, 20 
CMOVS EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], DI 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EDX 
CMP CL, -16 
BSWAP RBX 
IMUL RAX, RDX, 72 
ADD SIL, 63 # instrumentation
CMOVBE ESI, ESI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], AX 
MOVZX RDI, SIL 
AND RBX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RBX], 41 
NEG RBX 
MUL DI 
AND RAX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RAX] 
IMUL SI, AX 
CMP EAX, 60 
ADD ESI, 89 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RSI] 
DEC DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
