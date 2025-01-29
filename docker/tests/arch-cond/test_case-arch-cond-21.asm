.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SIL, 95 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RBX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], BL 
NOT DL 
SETNBE CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 87 
AND RDX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDX] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD SIL, 32 # instrumentation
SAHF  
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RBX] 
SETNZ CL 
SBB SIL, -21 
SUB DX, 37 
SETNO BL 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RSI] 
TEST AX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], -110 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], 46 
MOV EDX, 366548952 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 93 # instrumentation
SETNLE BL 
MOV AX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RCX] 
XCHG EAX, EAX 
SUB AX, 13017 
AND RDX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RDX 
AND RSI, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RSI] 
SUB EAX, 1277322990 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDI] 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
ADD SIL, -66 # instrumentation
CMOVO RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
CMOVNBE DI, CX 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
XCHG AX, AX 
CMC  
SETZ AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
