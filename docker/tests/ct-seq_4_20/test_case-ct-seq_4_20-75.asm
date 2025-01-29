.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDX], -84 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], -49 
CMOVLE AX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -6 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RBX] 
CMOVZ DI, CX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], ESI 
CLC  
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RCX] 
SBB SIL, 48 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -19 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RCX] 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
