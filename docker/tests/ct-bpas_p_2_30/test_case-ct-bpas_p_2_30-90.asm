.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV CL, DL 
XCHG BX, AX 
SUB DL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RAX] 
SBB EAX, 643111431 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
NEG CX 
AND RBX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -89 
CMOVNZ SI, BX 
ADD EAX, 48 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
MOVSX DI, CL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RDX] 
NEG EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RAX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 69 # instrumentation
ADC ECX, EBX 
SUB DIL, 79 
MOV DI, 4098 
LEA RDX, qword ptr [RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], 64 
IMUL RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RAX] 
CMP DIL, 55 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RDI 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
CMOVS CX, CX 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -125 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
