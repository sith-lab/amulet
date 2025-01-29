.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], DL 
CMOVNO ESI, EBX 
CMP DIL, 4 
SETBE AL 
XOR AL, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], -52 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 118 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 37 # instrumentation
ADC BX, 122 
SETP DIL 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RAX 
SETL CL 
CMOVNBE AX, BX 
SUB RCX, 6 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], 114 
STC  
TEST SI, AX 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOVSX RCX, CL 
XCHG AL, AL 
IMUL SI, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDX] 
INC AX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD SIL, 47 # instrumentation
CMOVNZ ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RSI] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -33 # instrumentation
SETNL DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], -12 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RBX] 
INC SIL 
SUB DL, DL 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RDX] 
MOV BX, 4591 
IMUL RDI 
XADD RBX, RDI 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 63 # instrumentation
CMOVNB EAX, EDI 
TEST AX, 1078 
ADC EAX, -1208668736 
MOVZX EAX, AX 
CMOVNBE EDI, EDI 
NOP  
SBB DL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
