.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], 11 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -95 
AND RDI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 24 
AND RDI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 67 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -93 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EBX 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDX] 
CMOVZ EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
