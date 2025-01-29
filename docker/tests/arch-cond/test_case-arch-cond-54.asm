.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RCX 
CLD  
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RSI 
AND RAX, 1453726752 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RCX 
IMUL RDI 
ADD SIL, 64 # instrumentation
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RAX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EAX 
ADD SIL, -88 # instrumentation
CMOVO EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RCX], ESI 
ADD RAX, 41 
OR EDI, EDI 
AND BL, -107 
XOR RSI, 119 
MOVZX AX, DIL 
INC DL 
ADC AL, -79 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
MOV EDX, 1911130976 
AND RAX, -29 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -2021557989 
CMP RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], 122 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -64 
MOVZX RSI, CL 
CMOVS AX, DI 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], -38 
OR EAX, -1015253588 
CMOVS EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RSI] 
NEG DL 
SETNP DIL 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -91 # instrumentation
SETL AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RSI] 
SETNZ AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RCX] 
SETNS BL 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RAX 
XADD RCX, RDI 
SETNO AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
