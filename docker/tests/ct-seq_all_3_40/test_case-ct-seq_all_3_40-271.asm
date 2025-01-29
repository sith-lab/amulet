.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RBX] 
CMP EAX, -58 
XCHG AL, CL 
CMOVO RAX, RDI 
STD  
ADD SI, 94 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
AND RDI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDI] 
CMPXCHG BL, AL 
IMUL AL 
XOR BL, BL 
CMOVB ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RAX] 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 57 # instrumentation
SETB BL 
MUL BL 
CMOVNB BX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
TEST RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
ADD SIL, 115 # instrumentation
MOVSX RCX, CL 
SETLE CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], AX 
SETL DIL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 36 # instrumentation
SETNB CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
ADD SIL, -1 # instrumentation
SETNBE CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
IMUL BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -15 
SETNL AL 
TEST RBX, 13953540 
CMP AX, -14358 
SETP DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
