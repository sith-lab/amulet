.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 50 # instrumentation
ADC AX, 16790 
XCHG DIL, CL 
OR CX, 0b1000000000000000 # instrumentation
BSR AX, CX 
ADD SIL, -116 # instrumentation
ADC DIL, -88 
ADD DIL, 35 
CMPXCHG AL, BL 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], -21 
TEST AL, -82 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RAX] 
CMOVNLE RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
XOR DIL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RDI] 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
SUB AX, 13261 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], -73 
ADD AX, -95 
TEST AL, DL 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], ESI 
AND AL, 22 
SETBE BL 
SETL SIL 
IMUL ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], -126 
CMOVNP EDI, EAX 
CMC  
INC BX 
AND RAX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RAX] 
STC  
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
ADD DIL, -88 # instrumentation
SETNB AL 
NEG SIL 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 39 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
CMC  
OR AX, 3907 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
CMOVNP BX, SI 
SETNS CL 
SBB EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], -9 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
