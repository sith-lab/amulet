.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RAX] 
IMUL SIL 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 19 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -98 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 76 # instrumentation
CMOVNB CX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RDX] 
CMOVP RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], SIL 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RCX 
INC BL 
LEA EAX, qword ptr [RCX + RDI + 41176] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -4 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RBX] 
CMP DI, -83 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RAX] 
MOV EAX, 1817624404 
MOVSX CX, CL 
IMUL RDI, RDI, 111 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
