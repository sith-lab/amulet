.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], CL 
CMOVP DX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -30 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -108 
SBB SI, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RDX] 
NEG RSI 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 47 
AND RCX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RCX] 
CMOVB RCX, RSI 
CMOVNS DX, BX 
NEG AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDX] 
ADD BL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
