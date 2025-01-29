.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
ADD RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RAX] 
CMP BX, AX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RAX 
CMP RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ SI, DX 
SBB SIL, -63 
CMOVNZ EBX, EDI 
SUB CL, DL 
XCHG RCX, RDI 
CMOVP RAX, RSI 
CMOVNP AX, BX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DIL 
CMC  
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], -35 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RSI] 
CMOVNZ SI, SI 
CMOVNLE DX, AX 
NEG DX 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
CMOVP EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
SUB ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
ADD SIL, -88 # instrumentation
CMOVL BX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
