.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
CBW  
AND RDX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RDX] 
CMOVNBE AX, DX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SI, DI 
MOV BL, 86 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RBX 
MOVZX ECX, SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], DX 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD EAX, 610789771 
XCHG AX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
XCHG RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DI 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DI, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
IMUL DI, SI 
SUB DL, DL 
MOV DIL, 63 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -68 
CMOVNZ EDI, EDI 
CMOVNS EAX, EDI 
XCHG RBX, RAX 
JMP .bb_main.4 
.bb_main.4:
BSWAP RDI 
SUB RDX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
