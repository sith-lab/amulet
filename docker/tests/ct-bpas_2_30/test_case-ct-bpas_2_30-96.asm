.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RDI 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
CMOVBE RDX, RBX 
SBB AX, 93 
SBB EAX, 1827712060 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 56 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -15 
ADD DL, AL 
MOVSX EAX, DL 
ADC CL, DIL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RDI] 
CMP AX, 24755 
SUB EAX, -544667626 
SBB AX, -89 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], CX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 96 # instrumentation
MOVZX BX, CL 
SBB RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDX] 
DEC RAX 
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX], 12 
SBB RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 16946 
IMUL DI, DX, -40 
AND RDX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
