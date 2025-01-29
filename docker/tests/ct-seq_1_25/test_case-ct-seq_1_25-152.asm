.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RSI] 
ADC RCX, RSI 
CLD  
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 122 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], DI 
CMOVBE CX, SI 
ADD RAX, 1572233169 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
STD  
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], SIL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EBX 
SUB EDI, EDX 
SBB BX, -98 
AND RSI, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RSI] 
NEG BX 
CMP SI, -15 
ADD CL, CL 
ADD SI, CX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -93 
LEA RSI, qword ptr [RDX] 
SUB RAX, -963634615 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
