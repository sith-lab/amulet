.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RDX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -21 
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RDX] 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RAX] 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RCX 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RDX 
CMOVNO AX, SI 
STC  
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
