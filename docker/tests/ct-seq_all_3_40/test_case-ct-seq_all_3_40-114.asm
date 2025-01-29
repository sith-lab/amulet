.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
IMUL EDX, EDI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
SETNB AL 
AND RAX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RAX], -112 
XCHG DIL, SIL 
AND RDI, RSI 
TEST BL, 99 
XADD RBX, RCX 
CMOVLE EDX, ECX 
SUB DIL, SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], CL 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
DEC BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], -50 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], 43 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
ADD SIL, -62 # instrumentation
CMOVBE SI, DI 
CMC  
CMOVP RDI, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], ECX 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], BL 
CWD  
CMOVO ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDI] 
XCHG EAX, EAX 
SBB RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RDI] 
TEST AL, 64 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
CMPXCHG BL, AL 
SUB AL, 117 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -128 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], -75 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
XOR DL, BL 
SETP AL 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
