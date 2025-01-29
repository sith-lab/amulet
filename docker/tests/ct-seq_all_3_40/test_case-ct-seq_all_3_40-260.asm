.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -71 # instrumentation
CMOVNS RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], SI 
SUB AL, -58 
AND DL, -32 
MOVZX RDI, SI 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], BL 
XOR RAX, 62 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
OR DIL, 18 
MUL CL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RCX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RDX] 
OR AL, -89 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
SAHF  
CLD  
ADC BL, BL 
CMPXCHG RBX, RSI 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], -75 
MUL DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
AND EAX, -714092087 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -45 # instrumentation
ADC EAX, 1130917499 
CMOVNL EBX, EDX 
SETNZ DL 
SETNS DIL 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 62 
CMP DL, -67 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD SIL, 40 # instrumentation
SETNL BL 
IMUL AX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], CX 
DEC DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], -10 
SBB EAX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
