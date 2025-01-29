.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RSI] 
DEC BL 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], BL 
MOVZX RDX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RCX 
SBB DL, -73 
IMUL DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -118 
JMP .bb_main.2 
.bb_main.2:
CMP DI, DI 
CMOVNS RDI, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -43 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RAX] 
SUB EAX, -1065277974 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RBX] 
ADD RDX, 97 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP RCX, 105 
MOV RDX, 7904375185498468995 
ADD RAX, -363870665 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -58 # instrumentation
CMOVNBE RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 16 
AND RDX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RDX] 
CMOVS RSI, RDI 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
