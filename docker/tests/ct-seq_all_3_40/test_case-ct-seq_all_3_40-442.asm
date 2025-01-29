.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -57 # instrumentation
SETNP AL 
IMUL EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RCX] 
TEST RAX, 1537231440 
SETBE DL 
SETNB CL 
STC  
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDX] 
ADD DIL, -32 # instrumentation
CMOVNP CX, BX 
CMP EDI, EDX 
XCHG ESI, EAX 
SBB EBX, EDX 
MOVSX RBX, DIL 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], DIL 
CMOVNBE RDI, RCX 
XADD DL, DL 
CMOVS DI, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RCX 
ADD ESI, -102 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MUL EBX 
NEG EAX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 90 
MOV DX, DI 
CMP ECX, 123 
NOT DX 
MOVSX EBX, BX 
ADD AL, CL 
SUB ECX, -65 
XOR AL, -78 
ADD DIL, -41 
CMOVZ SI, AX 
CMOVS EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -58 
CMOVP ESI, EBX 
LEA RSI, qword ptr [RBX] 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], BL 
XOR RAX, 1727821934 
ADC AL, -27 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
