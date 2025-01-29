.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
MOVSX RDX, DL 
XCHG ESI, EDI 
SAHF  
SBB ECX, 11 
ADD RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
LEA EDX, qword ptr [RDX + RDX + 49472] 
MOVZX DX, DL 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
MOV SIL, DIL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RDI] 
CMOVO RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -66 # instrumentation
MOV CL, 54 
CMOVNBE RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], CX 
DEC DIL 
BSWAP EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -49 
CMOVNP CX, DX 
ADD DL, -68 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], 46 
CMOVNP RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
