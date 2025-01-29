.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
STD  
AND RSI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RSI] 
SBB RAX, -288788634 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], -109 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], CL 
SUB EAX, 1678750428 
CMOVBE RBX, RSI 
SUB RBX, 99 
MOV EAX, -819693670 
ADD EAX, -796745156 
MOVZX BX, CL 
MOVZX EDI, BX 
LEA RBX, qword ptr [RAX + RDI + 63411] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 49 
CMP RAX, 975295603 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -77 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RCX] 
ADD SIL, 12 # instrumentation
CMOVNB RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDI] 
ADD EAX, 332330545 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 56 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
