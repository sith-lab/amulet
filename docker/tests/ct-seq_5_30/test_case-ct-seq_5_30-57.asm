.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
CMOVNS ESI, EDX 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], -98 
AND RBX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RBX] 
CMOVNB RDI, RSI 
CMP AL, BL 
CMP RSI, -60 
CMOVP RDI, RDI 
MUL RDX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
CMC  
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], CX 
DEC RDX 
ADD EAX, -25852813 
CMOVLE RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RSI] 
ADD CX, AX 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 17 # instrumentation
CMOVNL AX, AX 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], BX 
CMOVNZ RSI, RAX 
MOV DIL, 56 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -28 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RSI] 
ADD DIL, -92 # instrumentation
MOVZX DX, CL 
CMOVBE RAX, RDI 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -107 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
