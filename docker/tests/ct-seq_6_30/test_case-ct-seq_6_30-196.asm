.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], SIL 
ADC SIL, -80 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -16 # instrumentation
CMOVNO RBX, RDI 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, -80 # instrumentation
SBB ESI, -93 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RSI 
XCHG EBX, EDX 
IMUL AX, SI, 77 
JMP .bb_main.3 
.bb_main.3:
NEG EAX 
CMOVO RAX, RDI 
INC BX 
JMP .bb_main.4 
.bb_main.4:
NEG ESI 
ADC CL, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], CX 
INC DL 
AND RAX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RAX] 
JMP .bb_main.5 
.bb_main.5:
SUB DL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDI] 
SBB EAX, -1699059224 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
IMUL RDX 
ADD SIL, 30 # instrumentation
CMOVNZ ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
