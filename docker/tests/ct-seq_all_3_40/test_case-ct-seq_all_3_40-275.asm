.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], 85 
SETLE CL 
CMOVB RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RCX] 
SETBE CL 
AND RDI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RBX] 
CMOVNP ECX, EAX 
CBW  
TEST CL, AL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
SETL DL 
SETNZ DL 
JMP .bb_main.1 
.bb_main.1:
AND EDX, 111 
AND RAX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], -41 
CMP DX, -6 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], 80 
CMPXCHG DL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], 41 
OR BL, BL 
AND SIL, -78 
NEG DL 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
LEA RCX, qword ptr [RBX + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], BL 
CMOVNL AX, BX 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], DI 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -1459562549 
ADD SIL, AL 
ADD SIL, -22 
LEA ECX, qword ptr [RBX] 
ADC BL, CL 
ADD EAX, 122 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
