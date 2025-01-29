.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG CX, AX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RDX] 
SAHF  
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], ECX 
XADD EBX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RAX] 
CMOVLE ESI, EAX 
CMOVL ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], DX 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
CLD  # instrumentation
ADD SIL, 100 # instrumentation
CMOVS EDX, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDX 
CMOVO AX, CX 
AND RDI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDI] 
INC SI 
NEG EDI 
CMOVNLE ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
DEC DIL 
MOV SIL, DIL 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], 21925 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RCX], RCX 
AND RDX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], DX 
TEST EAX, 1753349894 
TEST SIL, -119 
XCHG ESI, EAX 
AND AL, -72 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RCX 
AND CL, 87 
ADD EAX, -180545442 
JMP .bb_main.3 
.bb_main.3:
SUB SI, 6 
AND RDX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], 28545 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], EDI 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVSX ECX, BX 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], 551 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
