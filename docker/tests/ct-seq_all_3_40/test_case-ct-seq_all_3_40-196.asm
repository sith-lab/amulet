.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], -100 
SETO BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], DL 
AND AL, -112 
XCHG RBX, RAX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RCX] 
MOVSX RAX, AX 
SUB RDI, RSI 
XADD CL, DIL 
SAHF  
SETNLE DL 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
NEG EDI 
XOR AX, 5913 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], -63 
SBB DI, -68 
ADD AL, BL 
CLC  
AND RCX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RCX] 
CWDE  
CBW  
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
IMUL ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], -62 
SETB BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RAX] 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
ADD SIL, -31 # instrumentation
MOV SIL, DIL 
ADC AL, BL 
ADC EAX, -223508052 
INC DI 
IMUL RSI, RDI 
MOV SIL, AL 
OR DL, 38 
XCHG BX, AX 
CMOVNO RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
