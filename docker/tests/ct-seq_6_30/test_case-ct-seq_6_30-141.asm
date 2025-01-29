.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 34 # instrumentation
CMOVO ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RSI] 
CMOVNB RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 82 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RDX 
AND RDX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
ADC AX, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DX 
JMP .bb_main.2 
.bb_main.2:
BSWAP RSI 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], DX 
MUL EBX 
ADD DIL, 8 # instrumentation
CMOVNS RDX, RDI 
STC  
JMP .bb_main.3 
.bb_main.3:
ADD AX, -17137 
MOV AL, SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 88 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], -18 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB RAX, -571647518 
AND RDX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RAX] 
XCHG RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 42 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 87 # instrumentation
CMOVP RDX, RDX 
SAHF  
CMOVNLE DI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
