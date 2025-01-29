.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -127 # instrumentation
CMOVL EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DIL 
IMUL ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 96 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RCX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 71 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -95 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RSI] 
CMOVBE EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
ADD DIL, 114 # instrumentation
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
XCHG CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
