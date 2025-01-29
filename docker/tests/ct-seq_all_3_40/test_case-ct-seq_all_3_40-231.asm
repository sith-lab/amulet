.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL DL 
MUL SIL 
XOR AL, 60 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDI] 
XOR RBX, RDX 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DL 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RSI] 
AND EBX, -73 
OR AL, 119 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], BX 
CBW  
ADC AL, 113 
AND EDX, -15 
CMOVS DI, CX 
TEST DL, DL 
MOVSX AX, SIL 
ADC AL, 89 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDI] 
XCHG AX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], AL 
SETP DL 
CMPXCHG BX, BX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP EAX, ECX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], -441810005 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 54 
CMP SI, BX 
CMPXCHG BL, DIL 
AND RDX, 82 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], BL 
INC RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RDI 
XADD BX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], BL 
CMOVNB CX, DI 
SBB DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
