.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RCX] 
CMOVBE EAX, EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 0 
CMOVS DX, DX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDX] 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 111 
ADD EAX, 29 
AND RAX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
LEA RBX, qword ptr [RDX + RBX] 
MOVZX AX, CL 
CMP DL, DL 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RDI 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -128 
CMOVLE ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
CMOVLE RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EDI 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RAX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -28 
CMOVLE EDX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
