.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RBX] 
MUL BX 
ADD DIL, -47 # instrumentation
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 58 # instrumentation
CMOVZ RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
LEA ECX, qword ptr [RDI + RSI + 50455] 
AND RBX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 107 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDI] 
MOV SI, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
MOVSX RAX, AL 
SBB SI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
