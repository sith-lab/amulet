.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC EDI 
INC CX 
MOV RSI, RDX 
CMOVO SI, DX 
CMOVZ EAX, ECX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 3 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -48 # instrumentation
SBB DIL, -29 
SUB RBX, -12 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RBX 
ADC DIL, SIL 
XCHG EBX, EAX 
JMP .bb_main.2 
.bb_main.2:
MUL EBX 
IMUL ECX, EDI 
SUB AX, AX 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], -10 
CMOVNLE ECX, ECX 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], -8 
SUB RCX, 74 
XCHG BX, AX 
DEC AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
JMP .bb_main.4 
.bb_main.4:
IMUL EAX, EAX, 67 
SBB RBX, RDI 
ADD SIL, -19 
ADD CL, -12 
SBB AL, 60 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
CWDE  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
