.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -120 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
MOV RBX, -1399991868915115326 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RAX] 
MOVZX SI, BL 
SBB DIL, -70 
AND RDX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RDX] 
CMOVZ RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
CMP EAX, -1468745994 
CMOVNS ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], 81 
ADC EDX, -112 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RCX] 
CMOVO EBX, ECX 
MUL AL 
SUB BX, DI 
CLC  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RDI 
CWDE  
SUB ECX, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 39 
CMOVLE RSI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
