.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDI] 
SUB AL, -74 
CMOVBE RAX, RDX 
INC SI 
CMP DL, DL 
ADC RBX, -23 
AND RDX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 98 # instrumentation
CMOVNS RCX, RAX 
CMOVP RCX, RDI 
IMUL DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
CMP DX, 11 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -89 # instrumentation
SBB DL, CL 
CMOVBE ESI, EDX 
CMOVO SI, SI 
AND RDI, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDI] 
SUB AL, 50 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 105 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RBX] 
IMUL RCX, RDI 
JMP .bb_main.3 
.bb_main.3:
DEC ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 62 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDX] 
SUB EBX, ESI 
ADD AL, AL 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 14 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], BX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
