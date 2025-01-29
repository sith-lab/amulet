.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -92 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], -28 
CMOVLE ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 89 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], CX 
SUB RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
ADC SIL, 13 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 103 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 31 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 95 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], -76 
JMP .bb_main.2 
.bb_main.2:
OR SI, 0b1000000000000000 # instrumentation
BSF DX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], 51 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -36 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
