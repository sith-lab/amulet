.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RAX] 
NEG CX 
CMOVNL RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], BL 
CMOVS EBX, EDX 
SUB RAX, -572799839 
CMP BX, AX 
CMOVBE DX, DX 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], SI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD DIL, -128 # instrumentation
ADC RSI, 14 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], 8 
LEA DI, qword ptr [RBX] 
CMP AX, -20800 
MOVZX CX, CL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EAX 
DEC DL 
INC AL 
AND RSI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RSI], 17 
SBB AL, BL 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], CX 
MOV SI, BX 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], BX 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], ECX 
ADD AL, 83 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RCX] 
CMOVNB EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
