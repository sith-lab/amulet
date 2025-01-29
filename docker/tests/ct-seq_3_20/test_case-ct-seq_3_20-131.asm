.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
MOVZX EAX, CL 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], 1 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RAX] 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 83 
AND RSI, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
CMP DL, BL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 14 
LEA RDX, qword ptr [RAX + RAX + 46532] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
