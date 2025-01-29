.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
XADD CL, AL 
ADC CX, -10 
SETNLE CL 
CMOVZ BX, AX 
SETNS AL 
OR CX, 0b1000000000000000 # instrumentation
BSF BX, CX 
ADD DIL, -123 # instrumentation
CMOVP RDI, RDX 
MOV AL, AL 
DEC CL 
CMOVP BX, DX 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
DEC BL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB BL, DL 
CMOVNB DI, CX 
MOV CL, -111 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], DX 
MOV AL, AL 
CMOVNB DX, DX 
ADC EAX, ESI 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 85 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], 43 
BSWAP EAX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDI] 
ADD DIL, -95 # instrumentation
SBB AL, 97 
TEST EAX, 1647029021 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDX] 
ADC RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDI] 
SETNB AL 
CMPXCHG BL, AL 
MOVZX ECX, BX 
SUB AL, -96 
SETNLE DL 
AND RSI, 0b1111111111111 # instrumentation
AND ECX, ECX 
SETNLE DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
