.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR CX, 51 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RCX] 
XCHG RDX, RAX 
CMP RAX, -81 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], SI 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
XOR CL, DL 
ADD EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RBX] 
OR RAX, 1345617747 
TEST AL, CL 
XCHG BX, AX 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], AL 
ADD AX, 19583 
JMP .bb_main.2 
.bb_main.2:
MUL CL 
MUL AL 
AND RAX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RAX] 
CMOVNB EAX, ESI 
SETS CL 
AND RAX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RAX] 
SBB AL, -36 
SETS AL 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], -104 
XCHG CL, BL 
IMUL RAX, RBX, 3 
MUL RBX 
SETNO DIL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RDX 
CMP EAX, ESI 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 67 # instrumentation
SETP BL 
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RBX 
AND RAX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RAX] 
XADD RAX, RAX 
SETNS BL 
CMOVNP DX, BX 
CMOVS EDI, ECX 
MOV BL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
