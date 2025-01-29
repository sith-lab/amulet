.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV BL, CL 
SUB EAX, -265421620 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RCX] 
CMOVNB RCX, RDX 
CMP EDI, -10 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
ADD SIL, -88 # instrumentation
CMOVNZ ESI, EDX 
CMOVNO RAX, RCX 
IMUL DL 
IMUL CL 
MOVSX RAX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RDI] 
INC DI 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DX 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDX] 
NEG DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EAX 
JMP .bb_main.3 
.bb_main.3:
NEG ESI 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RBX 
MOVZX RBX, DI 
CMOVNS AX, BX 
MOVSX BX, CL 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
INC BL 
MOVZX ECX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
