.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD DIL, -97 # instrumentation
MOV word ptr [R14 + RDI], BX 
MOVSX EBX, CX 
LAHF  
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ECX 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, 18 # instrumentation
ADC AL, DL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], DI 
NEG DL 
MUL SIL 
AND RCX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RCX] 
CMP ECX, 101 
XCHG RCX, RCX 
ADD EAX, -1743789410 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDI], -98 
ADD SIL, 27 # instrumentation
CMOVZ DI, DI 
CMOVNL ESI, EAX 
SUB BL, 24 
ADC SI, -33 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 93 # instrumentation
SBB RDI, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
CMOVO EDI, EAX 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RDX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDX 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
ADD DIL, 84 # instrumentation
CMOVNP RDI, RCX 
CMOVNO EDI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
