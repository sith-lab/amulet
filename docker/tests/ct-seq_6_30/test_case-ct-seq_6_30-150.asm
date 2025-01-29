.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -50 # instrumentation
ADC RAX, 921393377 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RDI] 
JNZ .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], BL 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
DEC RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
XCHG RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], SI 
JMP .bb_main.3 
.bb_main.3:
MOV EBX, EDX 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD DIL, -94 # instrumentation
MOVZX DX, DIL 
CMOVZ CX, BX 
MOV BL, DIL 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
ADD DIL, -78 # instrumentation
CMOVNB BX, DX 
MOV EBX, 504865795 
CMOVNS RCX, RCX 
MOVZX EDI, CL 
AND RAX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RAX] 
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RBX] 
CMP AX, 12105 
SBB DL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RSI] 
SBB SIL, 87 
CMOVP AX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
