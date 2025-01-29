.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -22 # instrumentation
CMOVP EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RDI] 
MOV BX, SI 
MOV RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RSI] 
SUB EDX, -66 
ADD ECX, EDX 
IMUL RBX, RCX 
ADD SIL, 94 # instrumentation
LEA RSI, qword ptr [RSI] 
CMOVP RAX, RSI 
IMUL EBX, EDX, 42 
SBB AX, 26468 
MOV BL, -43 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RBX] 
CMP DL, 108 
CMOVNBE RBX, RDI 
LEA BX, qword ptr [RBX + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -54 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDI] 
DEC AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RAX] 
CMP SI, BX 
IMUL ESI, ESI 
CMOVO RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], SIL 
NEG RSI 
IMUL RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
