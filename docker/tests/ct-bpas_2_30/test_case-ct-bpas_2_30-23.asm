.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RBX] 
CMP RAX, -21 
ADD DIL, 105 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], 120 
AND RAX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RDI] 
CMOVNO RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 78 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], 116 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDX 
ADD DIL, 24 # instrumentation
LAHF  
AND RDX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDX] 
CLC  
AND RBX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RBX] 
CMOVNL EDI, EDX 
DEC DL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], AX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 25 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
ADC RDX, -91 
SBB SIL, 1 
CMOVNO RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDI] 
CLC  
ADD RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
