.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -9 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
ADD RAX, 518776451 
MUL DL 
SUB SI, 40 
CMOVNLE RSI, RSI 
LAHF  
ADD SIL, 82 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], DX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 44 
MOVZX RBX, BX 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -71 
SUB RAX, 88 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RAX] 
CMP DX, 60 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
