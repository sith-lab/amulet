.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, 15 # instrumentation
SETZ AL 
IMUL EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
IMUL DL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
IMUL ECX 
ADD DIL, -89 # instrumentation
CMOVBE CX, SI 
ADD CL, 91 
MOVZX CX, CL 
AND SIL, -12 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
IMUL AX, AX 
SUB AL, 103 
CMOVNS RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDI] 
MOVSX EAX, DX 
CMOVS DI, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -101 
SUB AL, 47 
MUL RAX 
CMOVB RDI, RCX 
XCHG RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RAX] 
AND EDX, EBX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RBX] 
ADD SIL, -79 # instrumentation
CMOVLE RSI, RBX 
CMPXCHG EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RAX 
CMOVL RAX, RDX 
AND RCX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RCX] 
CMOVL RSI, RCX 
NEG BL 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], -104 
CWD  
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -43 
XCHG SI, AX 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], DX 
OR AX, -18422 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
