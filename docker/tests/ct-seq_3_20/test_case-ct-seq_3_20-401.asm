.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 18 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
CMOVNB DI, CX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
SUB EAX, -114 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
DEC SI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RBX] 
CMOVL RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RCX 
CMP RBX, -44 
AND RDX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], CL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL DX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
