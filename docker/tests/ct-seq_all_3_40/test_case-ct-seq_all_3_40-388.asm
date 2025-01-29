.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -58 # instrumentation
SBB DL, AL 
XADD ESI, EDX 
ADD ESI, 1 
DEC BX 
ADC EAX, -1304559261 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], -1 
AND RAX, 65 
BSWAP RBX 
AND DL, CL 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 1574994970 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
ADC DIL, 102 
CLD  
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], BX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
AND RDI, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RDI] 
ADC CX, 96 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RBX] 
ADD AL, -100 
XCHG AX, AX 
MOV RCX, RDX 
DEC BL 
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
NOT CX 
CMPXCHG BL, DL 
AND RSI, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RBX] 
XADD EDX, EDI 
CDQ  
AND EAX, EAX 
ADD DIL, DIL 
CMP SI, DI 
SUB AX, -25431 
TEST RAX, -2031886718 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], 530339021 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -78 
NEG RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
