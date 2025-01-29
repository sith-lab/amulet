.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 50 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDX] 
SUB AX, -4311 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RDI] 
MUL CL 
AND RAX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RSI] 
MUL BL 
IMUL DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], 19 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], -123 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
