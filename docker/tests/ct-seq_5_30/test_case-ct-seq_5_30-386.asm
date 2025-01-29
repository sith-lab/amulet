.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 58 # instrumentation
CMOVNBE ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
CMOVNP EDI, EDX 
NEG AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], BL 
CMOVL DI, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RSI] 
ADD AX, -18060 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], BL 
CMOVNLE EDI, ECX 
CMOVNO RDI, RAX 
CMOVNP RDX, RBX 
SUB BL, BL 
MOVZX RBX, SIL 
CMP DL, DL 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
INC AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
SBB AX, -25535 
ADC AL, 104 
LEA SI, qword ptr [RDI] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 106 # instrumentation
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMP RAX, 1614704133 
AND RAX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RSI] 
MOV DL, 99 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RDX] 
CMOVBE RSI, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
