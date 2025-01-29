.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DL 
CMOVO RCX, RDI 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RBX 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
AND RBX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 1950649823 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
XCHG RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -9 
CMP AX, -19816 
AND RCX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
