.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 91 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -49 
AND RDI, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], DX 
AND RSI, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RSI 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], BX 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 46 # instrumentation
CMOVNP RCX, RCX 
SBB ESI, -58 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], 89 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
ADD DIL, -53 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 66 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
