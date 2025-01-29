.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 110 # instrumentation
CMOVZ AX, BX 
DEC AL 
CMOVNZ RSI, RDX 
AND RDX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RDX] 
XCHG DIL, BL 
ADD SIL, 46 
CMOVNS CX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDI] 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DIL 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
MOV SIL, SIL 
JMP .bb_main.2 
.bb_main.2:
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
ADD SIL, 106 # instrumentation
ADC AX, 25963 
CMOVP RDI, RAX 
SBB EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
ADC CL, SIL 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP DIL, 122 
AND RDX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RDX] 
ADD RCX, 40 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDI] 
CMOVBE RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDI] 
CMOVNZ EDX, EBX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
