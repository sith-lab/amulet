.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP RAX, 1253545021 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], 69 
OR ECX, EAX 
BSWAP EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RSI 
MOV DX, 12928 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
CMOVL BX, AX 
NEG BL 
MOV SIL, DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], DL 
SUB RAX, 762076044 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RSI] 
TEST RCX, RDX 
INC BL 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], AX 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
DEC DL 
AND RAX, RCX 
MOVZX RSI, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RBX] 
TEST RAX, 694145472 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], AL 
SETNS CL 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RAX 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], -119 
CMOVNZ EAX, ECX 
DEC RCX 
CMOVS RSI, RBX 
SBB RAX, -402428708 
XADD DL, AL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMPXCHG SIL, DL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RSI 
ADD SIL, -70 
AND RCX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RCX], DI 
ADD DL, -112 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RSI] 
XADD ESI, ESI 
MOVZX DX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
