.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EAX, 259235386 
AND RBX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 110 
CMP RAX, -700630849 
AND RDI, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RBX] 
SUB BL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDI 
SUB AX, -17448 
MOV RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EDX 
CMOVNS RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RBX] 
ADD CX, -3 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], DX 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -83 # instrumentation
CMOVL RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
