.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 43 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RAX 
AND RDX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], -54 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDX] 
STD  
AND RCX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RCX] 
ADC SI, 20 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
MOV DIL, SIL 
SUB AL, BL 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 63 
CMOVO RDX, RSI 
JNZ .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], AX 
INC DI 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
CMP AL, -75 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 51 # instrumentation
ADC BL, 26 
CMP AL, 54 
CMOVO SI, AX 
XCHG EBX, EAX 
CMOVP CX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RDX] 
SBB AX, -29317 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], ECX 
AND RSI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
