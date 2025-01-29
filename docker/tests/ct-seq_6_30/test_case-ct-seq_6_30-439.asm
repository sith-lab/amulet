.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RAX] 
SBB EAX, 81363902 
ADC AL, 31 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EDX 
ADC SI, AX 
JNL .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], CX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -8 # instrumentation
CLC  
CMOVZ SI, DX 
ADC AL, DL 
ADD AL, -25 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], AL 
BSWAP RDX 
ADD EAX, 1297153519 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RBX] 
STD  
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -93 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], SI 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EBX 
MOV RAX, 953352488668821227 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 83 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -100 
ADD AL, BL 
DEC AX 
ADC RAX, 338900311 
ADC CX, -99 
JP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], AX 
NEG EBX 
SBB RAX, 378206369 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
