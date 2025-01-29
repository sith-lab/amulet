.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RAX] 
MOV EBX, EDI 
CMOVNZ DI, BX 
IMUL DI, DX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], SI 
SETL CL 
TEST BX, DI 
JZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RBX 
SBB CX, 121 
AND RAX, -45 
SUB AX, 27037 
CMP DIL, -15 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], AL 
XOR RAX, -261224712 
TEST EAX, -259335752 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RAX], RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], -121 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], 44 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -125 # instrumentation
SETNLE CL 
AND RSI, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RDI] 
IMUL SI, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDI] 
IMUL RAX, RAX, 67 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], AX 
OR DX, SI 
MOVZX EDI, AL 
SETP CL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], -124 
ADD EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
IMUL EDX, EBX, -99 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], -34 
AND CL, -18 
NOT DL 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], AL 
SETNS CL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RAX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
