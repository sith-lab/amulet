.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT DX 
INC BL 
INC AX 
OR CX, -2 
XCHG ECX, EAX 
CMP AX, -2927 
CMOVZ RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 40 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
ADC RAX, 1340225839 
TEST CX, 6461 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], -41 
SETNL DL 
SETP AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], SIL 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 9 # instrumentation
SETLE BL 
AND AL, -125 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDX], BX 
MOV BX, 7769 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RCX] 
SBB RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDI], EAX 
SBB BL, -70 
JMP .bb_main.2 
.bb_main.2:
LEA RCX, qword ptr [RDI] 
XOR AX, -27048 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RDX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RBX] 
NEG AL 
MOVZX ECX, SI 
DEC ESI 
SUB AX, -23974 
LEA RCX, qword ptr [RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RSI] 
INC ESI 
SETNZ CL 
CMOVNO DI, DI 
CMOVP RDX, RAX 
XOR AX, -8681 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
