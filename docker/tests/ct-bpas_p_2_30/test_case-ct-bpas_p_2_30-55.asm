.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
SUB ESI, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
AND RDI, 0b1111111111111 # instrumentation
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
SBB BL, -26 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 29 
CMC  
SBB BL, CL 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CWDE  
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], 71 
AND RBX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RBX] 
SUB SIL, -26 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], BL 
CMP AL, DL 
SUB AX, 11107 
CMOVNL SI, DI 
IMUL BL 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 9 
SBB SIL, 113 
AND RDX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RDX] 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
MOV RAX, 3290666520535644611 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDI] 
MOV CX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
