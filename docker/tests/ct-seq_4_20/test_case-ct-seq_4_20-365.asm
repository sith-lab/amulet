.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], BL 
SBB RAX, -57 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 76 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RAX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RAX] 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
SUB EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 13534 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDI] 
MOV ECX, 615885659 
CMP BL, BL 
MOV CL, BL 
INC RAX 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DIL 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], CL 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 0 
CMOVZ BX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
