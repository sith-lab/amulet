.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL DIL 
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -117 
BSWAP EDX 
SETBE BL 
CMOVO EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RBX 
CMOVNBE ECX, EBX 
SETNB AL 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
OR DX, 1 # instrumentation
JMP .bb_main.1 
.bb_main.1:
NOT DL 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], SI 
AND CL, 96 
ADD BL, 103 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RBX] 
XOR ESI, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RDI 
NEG CL 
SBB EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
DEC RBX 
SETP DL 
SUB ECX, EDI 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XOR RDX, qword ptr [R14 + RDX] 
CMOVNZ RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], -37 
SUB DL, CL 
STC  
STD  
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], -31 
ADC SI, AX 
XOR DI, AX 
CLD  
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], 62 
SETNL BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
