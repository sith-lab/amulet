.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RDI 
SUB ESI, 10 
CMOVL SI, AX 
AND RDI, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
SBB BX, AX 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RAX] 
SUB CX, -33 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -55 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RSI] 
SBB RAX, -110 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
ADD ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 99 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RDX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
