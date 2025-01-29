.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -85 # instrumentation
MOVZX DX, SIL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], -26 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDX 
MOVSX RAX, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], DX 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOV CL, -45 
AND RAX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RAX] 
CMP AX, -10952 
CMOVNLE DX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
LEA RDI, qword ptr [RBX + RCX] 
DEC AL 
CMOVNP SI, DX 
JMP .bb_main.3 
.bb_main.3:
CMP AL, DL 
MOVZX EDI, AL 
MUL DX 
IMUL BX, AX, -59 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RDI] 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 57 # instrumentation
CMOVBE BX, DX 
MOVSX EDI, BX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
SBB AL, SIL 
CMP EDI, -51 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 14 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RSI] 
ADD AX, -6696 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
