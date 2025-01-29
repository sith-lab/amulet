.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
NEG RCX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 17 
LEA DI, qword ptr [RAX + RSI] 
ADC DL, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 89 
AND RBX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -1976071699 
SBB SI, DX 
CMOVNL EDX, EDI 
BSWAP EBX 
SBB RAX, 93395418 
ADD DIL, 97 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], SI 
CMOVB RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD SIL, -71 # instrumentation
CMOVO RSI, RDI 
AND RCX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
AND RDI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDI] 
SBB SI, 3 
SBB EAX, 20 
IMUL EDX 
MOVSX ESI, CL 
ADC RSI, RBX 
INC RCX 
STD  
CMOVNBE EDI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
