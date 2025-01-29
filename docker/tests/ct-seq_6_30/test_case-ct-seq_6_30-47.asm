.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RAX 
ADD DI, -86 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RSI] 
MUL DI 
MOV DIL, CL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], -22 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
IMUL RCX, RSI 
SBB EBX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RSI] 
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SI, 13 
NEG RCX 
SUB DIL, -48 
SBB RDX, RBX 
CMOVO BX, SI 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP AX, DI 
CMOVNO RSI, RDI 
JS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RDX] 
MOVZX DX, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RBX] 
ADC DL, 98 
AND RBX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RDI], 122 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RSI] 
SBB CL, DIL 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
MUL DL 
ADD DIL, 18 # instrumentation
CMOVNL AX, BX 
AND RDI, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
