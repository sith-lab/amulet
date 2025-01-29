.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA DX, qword ptr [RDX + RBX + 57241] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], ECX 
IMUL SI, DX 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RCX] 
IMUL ECX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], ECX 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], -83 
CMOVS ESI, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RBX] 
ADC DL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DL 
CMOVNO ESI, EAX 
ADC DL, -33 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 125 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
ADC EBX, ECX 
CMOVNO RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
