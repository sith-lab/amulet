.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL CL 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EDI 
SBB AL, 15 
ADC SIL, -76 
AND RDI, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RCX] 
SUB RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RDI] 
INC AX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -24 
SUB RCX, RDI 
CMOVBE RDI, RDX 
SUB EAX, -2058951207 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], SIL 
XCHG CL, AL 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
ADC BL, -106 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
