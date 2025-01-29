.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL DL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
INC ESI 
AND RDI, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RDI] 
MOV ESI, -1392489137 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], -75 
IMUL CX 
AND RAX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RAX] 
JB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, 39 # instrumentation
CMOVBE DI, AX 
CMOVO EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
CMP ESI, 66 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
SUB AX, AX 
MOV EAX, 1468263091 
JMP .bb_main.3 
.bb_main.3:
DEC CL 
SUB RAX, 100 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -45 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -17 # instrumentation
CMOVO EAX, ESI 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DL 
CMP RCX, -28 
SBB ESI, -11 
AND RCX, 0b1111111111111 # instrumentation
ADD SIL, 117 # instrumentation
CMOVNS ESI, dword ptr [R14 + RCX] 
LAHF  
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
