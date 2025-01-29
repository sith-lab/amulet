.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 76 
NEG BX 
INC CX 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -57 
AND RDX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDX], 61 
XCHG ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RAX] 
CMOVNZ DI, DI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDI 
ADD DIL, -8 # instrumentation
CMOVB AX, AX 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
CMP AX, -18422 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
CMPXCHG BL, SIL 
TEST DL, -28 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RCX] 
NOP  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -101 
AND RAX, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 75 
CMOVNBE SI, DX 
SETB BL 
TEST EAX, -998945596 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], DL 
SUB ESI, 118 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], 82 
MOVSX EDI, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -36 
CMOVNS RAX, RDX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
AND DIL, SIL 
SUB DL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RBX] 
INC DI 
CMP DL, DL 
ADD AL, 87 
CMOVNB ECX, EAX 
ADD EDX, EDI 
MUL RDX 
ADD EAX, 1398555391 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
