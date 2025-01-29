.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RDX] 
CMOVNL BX, CX 
CMOVNLE CX, CX 
SUB CL, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 124 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EDI 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 101 
SUB AX, 25562 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 12 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -56 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
