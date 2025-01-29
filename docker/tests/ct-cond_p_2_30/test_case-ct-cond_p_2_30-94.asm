.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 57 # instrumentation
ADC SIL, 5 
ADD EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RCX] 
ADC BL, DL 
SAHF  
SUB EAX, 1734077980 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -119 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RCX] 
IMUL ECX, ECX 
INC BL 
MOVZX RSI, AX 
MOV ESI, EDX 
MOVSX RSI, CX 
CMOVL DX, DI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 18 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -108 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -45 # instrumentation
SBB DI, 107 
IMUL AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], CX 
CMOVNLE ECX, EDX 
MUL RAX 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RBX] 
CMOVNO ESI, EDI 
SBB DIL, 92 
AND RSI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
