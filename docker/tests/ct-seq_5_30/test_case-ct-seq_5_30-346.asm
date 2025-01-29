.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EAX, 94 
MOV RSI, -4606216787849676139 
AND RDI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDI] 
CMOVNBE EDX, ESI 
JB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 67 
SUB DIL, 10 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -108 # instrumentation
CMOVNP ECX, EDX 
ADD RDX, 74 
CMP EDX, 107 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
ADD AX, -12675 
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDI] 
ADD RAX, 1057195349 
AND RSI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RSI] 
MOV DIL, -68 
XCHG RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], DX 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RCX] 
MOV CX, -11135 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -94 # instrumentation
SBB SIL, -96 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RCX] 
CMOVNLE RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
