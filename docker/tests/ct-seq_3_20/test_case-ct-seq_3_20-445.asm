.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV BL, AL 
AND RDI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RSI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RBX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], BL 
CMOVP RCX, RAX 
OR BX, 0b1000000000000000 # instrumentation
BSR BX, BX 
AND RSI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDX 
INC BL 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -57 
NEG RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RCX 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
ADD EAX, 717484942 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
