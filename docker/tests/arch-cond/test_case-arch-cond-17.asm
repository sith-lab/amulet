.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RBX] 
CMP DIL, 80 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], 122 
CMOVNBE CX, CX 
MOV SIL, SIL 
ADD EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDI] 
TEST BX, CX 
JMP .bb_main.1 
.bb_main.1:
XCHG SI, AX 
AND RBX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], -71 
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
JNLE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
ADC RBX, 51 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDI] 
ADD RDX, RCX 
XCHG EDI, ECX 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], -5 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], DI 
SBB EBX, -40 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], EDI 
XOR AL, 123 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOV EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -92 
XOR AL, -108 
CMOVNO AX, DI 
CMP RDI, RBX 
XADD RBX, RSI 
ADD RAX, 155674278 
CMP CX, -94 
MOVSX ECX, BL 
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDX] 
CMP RAX, -1387372052 
XCHG RAX, RDI 
CMP AL, 19 
CMP DL, BL 
SETNLE CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
