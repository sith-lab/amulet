.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL RAX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], 28 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 103 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
CMP SIL, -86 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
SBB SIL, -17 
IMUL RCX, RBX, 46 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -124 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], SIL 
IMUL DL 
MOVSX EBX, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
