.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, 126 # instrumentation
SETNO AL 
SETLE SIL 
CMOVNB ESI, EAX 
CMOVNP RBX, RBX 
SETB CL 
MOVSX RSI, AL 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
OR EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], -38 
TEST EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RBX] 
OR SI, 0b1000000000000000 # instrumentation
BSF DI, SI 
XOR AL, -76 
SETS CL 
MOV RDI, RBX 
IMUL DI 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RCX 
TEST RDX, RDI 
CMP AX, 10608 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 40 
CMOVS DX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], BL 
MUL EDI 
ADD DIL, 85 # instrumentation
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -29 # instrumentation
CMOVNS ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDX] 
XOR DI, 62 
OR AL, -65 
CMOVNS DI, CX 
TEST CL, AL 
MOV RSI, 1787147070165997824 
NOP  
SETNL DL 
CMP AL, SIL 
ADD EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RSI 
AND RSI, 0b1111111111111 # instrumentation
XOR SIL, byte ptr [R14 + RSI] 
ADD RAX, -1775205188 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
