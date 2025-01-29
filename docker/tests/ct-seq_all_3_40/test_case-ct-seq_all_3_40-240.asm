.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL CX 
MOV SIL, 7 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RBX] 
CMOVNL RAX, RDX 
CMOVP EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RCX 
XOR EAX, 798948363 
TEST AL, 120 
CMP AX, 29507 
IMUL EDX, EBX 
XCHG BX, AX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDX 
ADD DIL, 65 # instrumentation
CMOVNO ESI, ESI 
ADD RAX, 1337945712 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -125 
MUL AX 
ADC RBX, 89 
CMOVNB RBX, RBX 
CMPXCHG RDI, RDI 
OR RAX, 1987930244 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -43 # instrumentation
ADC AL, -107 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], -126 
TEST EAX, 311094076 
TEST DI, BX 
SETP AL 
AND RCX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RCX] 
NEG EDX 
ADD AL, AL 
NOP  
STD  
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], 102 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 76 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DI 
SETLE SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RAX] 
XCHG SI, CX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], SI 
SBB SI, 6 
OR EDX, 106 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
