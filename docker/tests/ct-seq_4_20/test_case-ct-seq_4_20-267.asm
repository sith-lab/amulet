.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -65 # instrumentation
SBB EAX, -635594998 
LOOPNE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
IMUL DX, BX 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], -125 
JMP .bb_main.2 
.bb_main.2:
IMUL RDI, RBX, -119 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RDX] 
SUB RSI, 46 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 114 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], BX 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], -94 
ADC AL, 11 
ADD AL, 75 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DL 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 113 
AND RAX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
