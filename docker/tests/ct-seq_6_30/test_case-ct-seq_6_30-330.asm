.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -73 # instrumentation
SBB AX, 11904 
STD  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -110 
ADC SI, 102 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
CMOVNB ECX, EDI 
CMP AL, 47 
SBB RAX, -543488099 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -6 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, SIL 
SUB AX, 24114 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RSI 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -80 # instrumentation
ADC AL, 107 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], CL 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 73 # instrumentation
ADC AX, DI 
CMOVB EBX, ESI 
SUB ESI, 19 
AND RDX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RDX] 
SUB AL, 63 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 66 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CLD  
AND RAX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RAX] 
SBB SIL, -16 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
IMUL BL 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, -23 # instrumentation
CMOVP AX, CX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], DX 
DEC CL 
AND RAX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
