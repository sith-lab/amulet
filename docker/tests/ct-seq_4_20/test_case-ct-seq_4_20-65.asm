.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EBX 
AND RCX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RCX] 
ADD SIL, -120 # instrumentation
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RSI] 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -102 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -72 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RDX] 
SBB ECX, -32 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RBX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], DI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -18664 
CMOVZ EDX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
