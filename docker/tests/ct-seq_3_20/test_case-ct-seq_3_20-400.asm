.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
CLC  
AND RAX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RAX] 
ADC AL, -119 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], 31 
SUB RCX, 18 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 9 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 89 # instrumentation
ADC BL, -47 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 80 
INC CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDX] 
MOVZX RBX, CL 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 24721 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EDX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], 73 
CMOVO CX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
