.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RBX] 
ADD RDI, RDX 
XOR DI, SI 
MOVZX EBX, CX 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], CL 
IMUL RCX, RDI 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 35 # instrumentation
CMOVP RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RBX] 
NOT RCX 
OR EAX, 727278089 
XADD CX, DI 
ADD AL, 72 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
SUB RBX, RDI 
XOR AX, 32143 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -99 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], -7 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RAX] 
ADD DIL, 105 # instrumentation
SBB CX, -58 
JMP .bb_main.3 
.bb_main.3:
SAHF  
CMOVNS ESI, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
IMUL CL 
ADD SIL, 87 # instrumentation
CMOVB BX, DI 
JNS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
OR RAX, -1645251908 
ADD EDX, EAX 
MOVZX ESI, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EDX 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MUL DX 
ADD DIL, -128 # instrumentation
CMOVBE RAX, RAX 
CMP SIL, -99 
CMOVNBE EAX, EBX 
MUL SIL 
OR AL, 14 
SUB AX, 3713 
OR DL, SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
