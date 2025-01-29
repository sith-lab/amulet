.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -71 # instrumentation
SBB DL, CL 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], -34 
CMOVL RSI, RDX 
INC EDX 
MUL DL 
AND RAX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 90 
AND RDX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB DIL, 80 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
SBB BX, -10 
MOV CL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RAX] 
MOV ECX, 659204827 
CMP AX, 24677 
SUB SIL, -96 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RSI] 
CMOVNZ EDX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
