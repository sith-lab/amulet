.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DX 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -61 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 6 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
SAHF  
SUB AX, -31568 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], 54 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -63 
AND RAX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
