.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 74 # instrumentation
CMOVS EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RCX] 
CMOVNZ EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RCX 
CMP RAX, 1600337613 
CMP DIL, 91 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
NEG DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], -9 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
LEA DI, qword ptr [RCX + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RBX] 
INC RBX 
JMP .bb_main.3 
.bb_main.3:
ADD AX, 23192 
ADD RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -44 
MOV AX, -30197 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -70 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVZX EDI, DI 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
ADC SI, -108 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 72 # instrumentation
CMOVP EDX, ESI 
CMOVB EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DL 
CMP DL, SIL 
CBW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
