.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
STC  
DEC EBX 
AND RDI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDI] 
CMOVBE RSI, RDI 
JLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, 22 # instrumentation
ADC RAX, 496740905 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
CMOVNBE CX, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
MOV BL, DL 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -102 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -44 
CMOVNP SI, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
ADD RCX, RSI 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XCHG AX, DI 
CMP CX, -32 
MOVZX RDI, DL 
SUB BL, AL 
AND RDI, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -98 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -58 # instrumentation
ADC EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RCX] 
ADD CL, SIL 
CMP DIL, 93 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 74 
ADC DX, DI 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], -69 
XCHG EDI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
