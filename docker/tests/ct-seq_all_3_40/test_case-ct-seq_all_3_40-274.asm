.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDI] 
IMUL EDX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 34 
CMOVNB RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], AX 
OR RAX, -1781256995 
XOR RAX, -592407675 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST BL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
DEC SI 
NOP  
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
CMOVNP RBX, RAX 
AND DL, DL 
AND RCX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RCX] 
CMOVO CX, SI 
AND RBX, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -12 
MOVZX BX, DIL 
TEST AL, -126 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
TEST BL, -34 
CLC  
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -122 # instrumentation
SBB EAX, 351030180 
NOT BL 
SETZ DL 
CMOVZ CX, DI 
SETNO DL 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], CX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RCX] 
CMP AL, 67 
SUB CX, SI 
TEST CL, CL 
CMOVZ BX, BX 
AND RCX, 0b1111111111111 # instrumentation
OR CX, word ptr [R14 + RCX] 
INC DL 
SUB RBX, -79 
CMPXCHG SI, CX 
SETB BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
