.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], 60 
CMOVO AX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RAX] 
JZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], BX 
AND SIL, -81 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RSI] 
SETLE BL 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], CX 
TEST EAX, -1443253753 
CMOVL AX, SI 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], CX 
MUL EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RCX 
AND RDX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
AND EAX, -1270594977 
XADD RDX, RCX 
SETLE DL 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RCX] 
CLD  
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], DI 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 62 # instrumentation
SETLE BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], DI 
MOVSX EDX, DIL 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], EBX 
TEST BL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RCX 
SBB AX, -8672 
MUL EBX 
ADD SIL, -20 # instrumentation
CMOVNBE RCX, RSI 
STD  
AND SI, -82 
MUL DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
SETZ AL 
TEST BL, -27 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
