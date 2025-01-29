.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDI] 
IMUL RSI, RSI, -121 
ADD SIL, -25 # instrumentation
CMOVL BX, AX 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RBX] 
MOVZX SI, SIL 
MOV RAX, RAX 
MOV DIL, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
IMUL ECX, EDI 
CMP RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], ECX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RCX] 
ADD SIL, -90 # instrumentation
CMOVNBE RDI, RSI 
INC SI 
IMUL CX, AX, 18 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DIL 
CMP EDI, EAX 
SBB DX, 55 
CMP ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
SUB DL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
