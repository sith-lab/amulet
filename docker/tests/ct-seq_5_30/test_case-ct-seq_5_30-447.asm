.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDI] 
CMOVP RBX, RSI 
NEG AL 
NEG DI 
CMOVO RBX, RDX 
CMOVLE BX, SI 
CMOVO RCX, RSI 
CMP AL, 17 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -8 # instrumentation
CMOVNO ESI, EBX 
SBB AX, 22762 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], AL 
ADD BL, 77 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
CWDE  
CMOVL DI, CX 
MUL DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RAX] 
MOVSX CX, CL 
JMP .bb_main.3 
.bb_main.3:
CMP BX, DI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RBX] 
MUL RDI 
ADD DIL, -89 # instrumentation
CMOVZ EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 56 # instrumentation
SBB DI, 8 
LEA AX, qword ptr [RBX + RCX] 
IMUL ECX, EDX 
ADD SIL, 102 # instrumentation
CMOVBE CX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
