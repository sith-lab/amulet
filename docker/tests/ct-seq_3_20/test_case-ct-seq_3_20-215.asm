.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RCX] 
ADD RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 8 
CMP RAX, RCX 
CMOVNZ SI, BX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
ADD AX, -21488 
CMP AL, DL 
AND RDX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RDX] 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -107 
AND RSI, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RSI] 
IMUL RDX, RBX, -44 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 74 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], SIL 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -85 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 67 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
