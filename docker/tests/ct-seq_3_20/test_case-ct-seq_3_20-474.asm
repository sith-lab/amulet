.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
CMOVNP AX, DI 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
CMOVNB RSI, RCX 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -91 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RCX] 
ADD RAX, -1866739764 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], CX 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 50 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
CMOVO EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RCX] 
XCHG DIL, BL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
NEG AL 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
XCHG RDX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
