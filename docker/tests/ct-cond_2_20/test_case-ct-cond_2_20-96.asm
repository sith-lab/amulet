.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -38 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RBX] 
ADD BX, -66 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
MOVSX RCX, SI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 6 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
