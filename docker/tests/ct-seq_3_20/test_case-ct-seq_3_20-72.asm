.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -50 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
ADC RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RDI] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -71 
JMP .bb_main.2 
.bb_main.2:
MOV CL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDI] 
SUB AX, 18562 
AND RDI, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], 53 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], SIL 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
