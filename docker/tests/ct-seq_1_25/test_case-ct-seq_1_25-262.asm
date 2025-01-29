.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
IMUL BX, SI, 84 
MOVSX RAX, SI 
CMP AL, 83 
ADC EAX, 273380307 
ADC RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDX 
IMUL ECX, EAX, 71 
ADC DIL, -26 
CMOVBE ECX, ECX 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
MOV SIL, 57 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -1365160695 
CMOVNP RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RBX] 
CMOVO RCX, RBX 
MUL DIL 
ADD SIL, 54 # instrumentation
CMOVNL EDI, EBX 
CMOVNBE SI, SI 
AND RSI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RSI] 
ADC DIL, -2 
MOVZX RDI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
