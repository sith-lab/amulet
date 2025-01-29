.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EBX 
CMOVNB RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
IMUL DI, DX 
ADD SIL, -73 # instrumentation
CMOVS ECX, EDX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], -23 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -33 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RBX] 
CMOVS BX, AX 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
