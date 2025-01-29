.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DL, CL 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], SI 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], BL 
CMOVNO AX, DI 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
IMUL BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -14 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -29 
IMUL RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RBX] 
ADD AX, -19307 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -59 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
SUB EAX, -1354877390 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], BX 
MUL BX 
ADD SIL, -18 # instrumentation
CMOVNLE RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
