.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 101 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -69 
ADD EBX, 97 
AND RBX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RBX] 
SBB SIL, DIL 
MOVZX ECX, BL 
IMUL DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
CMP SI, 90 
AND RCX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RCX] 
CMOVNO EDI, EBX 
MOV EAX, -523929979 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RBX] 
SBB EDI, EDX 
ADC AX, -22225 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
CMOVP DX, CX 
MUL AL 
STD  
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], 92 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
