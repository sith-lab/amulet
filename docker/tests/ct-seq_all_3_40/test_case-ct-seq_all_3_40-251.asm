.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RAX] 
AND AL, 59 
IMUL RSI, RDI 
ADD DIL, 65 # instrumentation
MOVZX EDI, BL 
SETNZ DL 
CMOVNS SI, AX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MUL RDX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 960953228 
OR DIL, -7 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -14 
XOR BX, -96 
SUB DIL, 99 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RAX] 
OR SI, 0b1000000000000000 # instrumentation
BSR BX, SI 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], BL 
BSWAP EDX 
NEG BL 
AND SIL, 61 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RBX] 
TEST RAX, 2003882006 
SETNL CL 
AND RAX, -24 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RSI] 
CMP AX, 28843 
CMP RCX, RCX 
XCHG EDX, EDX 
CMOVNZ AX, BX 
AND RBX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 90 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], -2 
SBB AX, -17 
SBB CX, 118 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -113 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
