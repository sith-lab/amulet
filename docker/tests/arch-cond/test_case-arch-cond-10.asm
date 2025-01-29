.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP DI, CX 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
MOVZX EDX, BL 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], -9 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CLD  # instrumentation
ADD DIL, 114 # instrumentation
CMOVNL ECX, EDX 
MOV EAX, EBX 
ADC AX, 66 
TEST RAX, 1226981925 
TEST AL, 31 
XADD ECX, EAX 
LEA SI, qword ptr [RAX + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDX] 
MOVZX BX, DIL 
IMUL RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
CMPXCHG BL, AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RCX] 
XOR AL, 85 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
IMUL RDI, RBX, -73 
ADD SIL, -124 # instrumentation
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
TEST BX, DX 
OR RBX, -34 
STC  
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 42 
CMOVP ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDI] 
BSWAP EDI 
CMOVO RSI, RSI 
AND RDI, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
CMPXCHG AL, CL 
CMP AL, -83 
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDI] 
ADD SIL, 20 # instrumentation
CMOVNZ EDI, ECX 
ADC DIL, 34 
NEG CL 
SETP DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
