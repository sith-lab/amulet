.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], AL 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
ADC RDI, 11 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RDI] 
IMUL ESI 
ADD SIL, -79 # instrumentation
CMOVLE ECX, EAX 
CMOVNBE EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
JP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], BL 
SBB RAX, 1747169821 
CMOVNZ RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
JS .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RBX] 
ADC RAX, -1877720688 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDI] 
XCHG BX, AX 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -49 
IMUL EAX, ECX, 7 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RSI 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -52 
JZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RAX] 
ADD ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
