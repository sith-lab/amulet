.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
CMOVLE RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], CX 
MOVZX BX, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], AX 
AND RDX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], 101 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RDX] 
MUL EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RAX] 
SBB DIL, -106 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDX] 
MOVZX ECX, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
