.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DX, AX 
AND RSI, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RSI] 
CMP CL, 77 
CMOVL DX, DX 
IMUL RDI, RBX, 36 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RBX 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
ADD DIL, -114 
CMC  
ADD EAX, 1733126667 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -50 
CMOVNO BX, BX 
MOVSX EBX, CL 
CMP RDI, 31 
MOV AX, -32009 
LEA RDX, qword ptr [RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RDI] 
SBB EAX, 2014467976 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -108 # instrumentation
ADC AL, -30 
DEC BX 
CMOVO SI, DI 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
JMP .bb_main.5 
.bb_main.5:
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
