.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
ADD CL, AL 
AND RDI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDI], -125 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], AX 
XCHG BX, CX 
SBB DIL, 43 
AND RSI, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -6 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
CLC  
CMOVNP AX, AX 
AND RCX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RCX] 
MOV BL, DIL 
MOVSX RDX, DIL 
CMOVNBE AX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
