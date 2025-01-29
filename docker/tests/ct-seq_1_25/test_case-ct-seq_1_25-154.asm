.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
CMP EAX, 272677980 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
NEG AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], CX 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
ADD DIL, 41 # instrumentation
CMOVNS EDI, EDI 
XCHG SI, AX 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
CMP DIL, 79 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EBX 
IMUL RDI, RDX, 18 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 50 
MOV SIL, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
MOVZX EAX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], CL 
CMOVNLE RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -43 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], CL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DIL 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
DEC DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
