.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDX] 
MOVSX SI, AL 
CMOVNB RAX, RDI 
SUB RSI, -16 
CMOVNLE ESI, EDI 
CMOVNP ECX, EDI 
MOVSX RDX, AX 
ADD AX, -3309 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RDI] 
ADD BL, AL 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -82 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD SIL, -117 # instrumentation
CMOVL EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
CMOVBE CX, AX 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], DX 
LEA RCX, qword ptr [RSI + RCX] 
SBB AX, 4339 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -76 
CMOVP RBX, RCX 
MOV EBX, -1797319202 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], SI 
CMOVNS DI, DX 
ADC ESI, EBX 
MOVZX RCX, DI 
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
IMUL RDX 
ADC DL, SIL 
CLC  
CMOVNZ RDX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
