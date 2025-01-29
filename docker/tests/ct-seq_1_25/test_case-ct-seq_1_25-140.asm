.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
MOVSX AX, DL 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
MOV RDX, RBX 
CMOVL RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 89 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -45 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RBX] 
CMOVLE EDX, EDI 
CMOVZ AX, BX 
MOV DX, -8965 
MOVSX ESI, DX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
