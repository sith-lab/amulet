.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ECX 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -65 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -10 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 19 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RCX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], BX 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -82 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDX] 
SBB SI, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 996863144 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DL 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
