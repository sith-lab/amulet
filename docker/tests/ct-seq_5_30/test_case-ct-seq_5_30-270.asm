.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RCX] 
IMUL BX, AX, -112 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 79 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
CMP DL, SIL 
SUB CL, DIL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RBX] 
SUB EAX, 1898370574 
SBB CL, DL 
DEC DIL 
SBB CL, -48 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EBX 
CMC  
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RDI] 
SAHF  
ADD DL, DIL 
CMOVL DX, DI 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR DL, 1 # instrumentation
SBB EDI, ECX 
SBB CL, SIL 
ADD CL, AL 
CMP RBX, 103 
AND RCX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RCX] 
SUB AX, DI 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -118 # instrumentation
CMOVZ DX, CX 
AND RDI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDI] 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
XCHG BL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
