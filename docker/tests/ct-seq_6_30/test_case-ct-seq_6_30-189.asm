.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 1 # instrumentation
CMOVZ EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RSI] 
XCHG EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
SBB DIL, -46 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 122 
CMOVNBE RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RAX] 
JB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
MUL RCX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RBX] 
CLC  
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDX] 
CMOVBE BX, AX 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD SIL, 78 # instrumentation
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 22 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
NEG RDX 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 15 # instrumentation
SBB AL, -41 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RSI 
SBB AL, -44 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 16236 
NEG DI 
XCHG BX, AX 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
