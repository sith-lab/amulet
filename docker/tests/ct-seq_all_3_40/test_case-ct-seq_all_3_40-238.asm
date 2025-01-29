.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP AL, 20 
CMP EAX, 71 
OR CX, 50 
XOR BX, DI 
CMOVNBE DX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDI] 
INC AX 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -127 
AND RSI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RSI] 
SETO SIL 
IMUL EBX, ECX 
ADD DIL, 82 # instrumentation
CMOVP BX, DI 
SUB BX, DX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -31 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD CX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 66 
CMOVNB DI, DI 
NEG RCX 
SBB RAX, RDI 
CMOVNBE EAX, EDX 
CMOVP EDI, ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], 51 
CMOVL ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RBX] 
CMPXCHG DL, BL 
TEST EDX, ECX 
CMOVBE BX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RBX] 
ADD DIL, 112 # instrumentation
CMOVNP EDI, EAX 
SBB ECX, 69 
ADD DL, BL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 124 # instrumentation
ADC RAX, 1037397740 
XCHG AX, CX 
CMOVNZ DX, BX 
ADC EAX, -1685306083 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], SI 
CMPXCHG CX, DX 
MOVSX SI, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
