.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RDI 
CMOVLE CX, CX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RDI] 
XCHG DIL, AL 
CMP RSI, RDI 
SUB BX, 2 
NEG SI 
IMUL DI, DI 
SUB EAX, 1162795179 
XCHG DI, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 47 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
ADD SIL, -27 # instrumentation
CMOVNP RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 125 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RDX] 
CMOVNLE RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 11 
CMOVZ EDI, ESI 
CMOVL ESI, EBX 
INC RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
