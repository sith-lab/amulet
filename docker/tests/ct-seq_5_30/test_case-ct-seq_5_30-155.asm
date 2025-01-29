.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], DI 
ADC RCX, RSI 
SUB AL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
JNO .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
IMUL DL 
SBB ESI, 78 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], 53 
CMOVNO RCX, RDI 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -553441151 
STC  
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RSI] 
CMP AX, -13549 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], -112 
ADD DL, -30 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
MOVSX EDI, CX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
JMP .bb_main.4 
.bb_main.4:
ADD DX, -63 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RCX] 
ADD ESI, EDX 
MUL AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
