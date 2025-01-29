.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -120 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RDI] 
INC EDX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD SIL, 82 # instrumentation
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, -56 # instrumentation
CMOVNB RAX, RCX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], AL 
ADD BL, DIL 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], 118 
MOV CL, 51 
CMP RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
CMP SIL, DL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
JL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -69 
MOVSX EDI, BL 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -54 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 44 
SUB DL, SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDX] 
LEA SI, qword ptr [RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 77 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -85 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
