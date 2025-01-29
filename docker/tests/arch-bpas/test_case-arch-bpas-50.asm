.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RAX] 
XADD DL, BL 
AND RCX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RCX] 
MUL BL 
AND EAX, -5 
SUB AX, -845 
SUB AL, 49 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
ADD SIL, 27 # instrumentation
CMOVO CX, BX 
AND RAX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RSI] 
CMOVNL EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RDX] 
MOVZX SI, DIL 
CMOVNL ESI, EDX 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
DEC BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 18 
XCHG AL, DL 
SETP DL 
ADC CX, -93 
JNS .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
NEG RBX 
INC DI 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
OR RCX, RSI 
JBE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, -81 # instrumentation
XCHG BL, AL 
ADC RAX, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDX], RBX 
CMP RAX, 1222088899 
NEG RAX 
ADD EAX, 1737628949 
CMOVNLE EDI, EDX 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -41 # instrumentation
CMOVNB EBX, EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
CMOVNO BX, SI 
SETNS BL 
CMOVO SI, DX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], CL 
XCHG CL, CL 
MOVSX ESI, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
