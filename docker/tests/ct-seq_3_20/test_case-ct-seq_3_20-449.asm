.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
CMOVNO RDI, RDX 
ADC CL, BL 
AND RCX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], -119 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDX] 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EDX 
MOVZX ESI, CL 
AND RBX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RSI] 
CMOVNL RDX, RDX 
XCHG BL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
INC SI 
AND RSI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RSI] 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
