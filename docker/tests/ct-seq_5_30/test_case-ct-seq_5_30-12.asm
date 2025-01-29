.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLC  
ADC AL, BL 
CMP AL, -78 
STC  
JO .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDX] 
MOV DL, -111 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -71 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -127 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDX] 
SBB EAX, -42 
MUL DI 
SBB AL, 22 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], -15 
MOV CL, CL 
CMP AL, SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], -38 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RCX] 
MOV DIL, DIL 
SUB EAX, -2084168003 
ADC RDX, 53 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDX 
ADD SIL, -66 # instrumentation
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 87 # instrumentation
XCHG BX, AX 
SBB SIL, 14 
CMOVL EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], BL 
ADC DL, AL 
SBB AX, 3493 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
