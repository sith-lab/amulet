.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -78 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -6 
CMOVNL EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], 103 
SUB AX, -38 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -17 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RSI] 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RSI 
AND RAX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDX] 
MOV DIL, -94 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RBX 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
CMP BL, -69 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
