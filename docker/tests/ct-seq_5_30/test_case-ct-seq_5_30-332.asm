.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RDX] 
DEC SIL 
SUB ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -119 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EDX 
CMOVNBE ECX, EBX 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMP EDX, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -26 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
ADD DIL, DL 
OR AX, 0b1000000000000000 # instrumentation
BSF DI, AX 
AND RDX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], -91 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XCHG EAX, ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RSI] 
SBB SI, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -30 
LOOP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -127 # instrumentation
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EAX 
AND RDI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RDI] 
MUL SI 
CMP CL, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP BX, DI 
MOV EBX, EAX 
LEA RCX, qword ptr [RAX + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
