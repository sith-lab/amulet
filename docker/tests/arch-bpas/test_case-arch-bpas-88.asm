.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
SETP AL 
MOVZX DI, AL 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], DL 
TEST DL, CL 
ADC EAX, EDX 
TEST EAX, -2049201592 
CMOVNO EDI, EDX 
AND DIL, 109 
CMOVL RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 21 
CMP AX, 27093 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], -24 
OR DIL, DIL 
AND SIL, CL 
OR EAX, -1758119209 
JMP .bb_main.2 
.bb_main.2:
XCHG BX, DI 
ADD EAX, 509822474 
CMOVNS SI, AX 
TEST DL, DL 
TEST DIL, -43 
ADD SIL, 52 # instrumentation
LAHF  
OR RAX, -1763757695 
MOVSX CX, BL 
ADD AX, -26720 
AND RAX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RAX] 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CWDE  
INC EDI 
IMUL EDX 
DEC BL 
AND RDX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDX], RDI 
AND RSI, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RSI] 
NOT RCX 
OR EDI, EBX 
TEST RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
