.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -36 # instrumentation
CMOVNL ESI, EAX 
CMP DIL, SIL 
AND RDX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RBX] 
BSWAP RSI 
JNBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD CL, CL 
CMOVNL RCX, RAX 
XCHG EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -111 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RAX] 
CMOVO EDX, EDX 
OR AX, 0b1000000000000000 # instrumentation
BSR CX, AX 
ADD DIL, 15 # instrumentation
CMOVNO EDI, EAX 
SUB RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RBX] 
LEA AX, qword ptr [RAX + RDX + 53677] 
MUL DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
STC  
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
SUB EBX, EDX 
INC BX 
CMOVNO RCX, RSI 
SBB EBX, 47 
JMP .bb_main.4 
.bb_main.4:
CMP DX, -41 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -103 
DEC RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
