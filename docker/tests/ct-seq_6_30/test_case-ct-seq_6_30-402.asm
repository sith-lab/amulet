.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 25 # instrumentation
CMOVBE RSI, RAX 
CMOVB EBX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
JP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD DIL, -39 # instrumentation
CMOVNS EBX, EAX 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RBX] 
CMOVNS RSI, RBX 
CMOVNL ECX, EDX 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
IMUL DI, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -57 
ADD EDI, -70 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -94 
INC DL 
JMP .bb_main.4 
.bb_main.4:
SUB EAX, -973322791 
XCHG AX, AX 
XCHG DI, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -102 
MOV DIL, 85 
AND RAX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RAX] 
MUL AL 
JMP .bb_main.5 
.bb_main.5:
OR SI, 0b1000000000000000 # instrumentation
BSR SI, SI 
ADD SIL, 39 # instrumentation
CMOVNL BX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 18 
CMOVZ ESI, EDX 
IMUL AX, AX 
CMOVO SI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
