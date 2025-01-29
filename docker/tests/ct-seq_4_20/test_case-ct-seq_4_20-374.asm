.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DIL 
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
NEG ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -91 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], 96 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RCX 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
ADD DIL, 70 # instrumentation
MOV BL, AL 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], AL 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
MOVSX EDX, DL 
NEG AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
