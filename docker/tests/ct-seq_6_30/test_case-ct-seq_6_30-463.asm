.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RCX 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], 0 
CLD  
CMOVNS CX, DI 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], AL 
JRCXZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
ADD SIL, -105 # instrumentation
JS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -19 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -41 
LEA EAX, qword ptr [RDX + RDI + 40991] 
CMOVO SI, BX 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD RAX, -14 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 91 
CMOVNP EDX, EBX 
MOV DI, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
ADD RDI, -26 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDX 
SUB AX, -4270 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 95 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RCX 
ADD EAX, 1970327729 
CMC  
IMUL CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
