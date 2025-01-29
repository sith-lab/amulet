.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AL, -3 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RDI] 
XCHG AX, SI 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RDI] 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], -96 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], 100 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -128 # instrumentation
ADC AX, 31583 
AND RDI, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RDI] 
MOVZX RSI, DIL 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], BX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -83 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], 75 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
