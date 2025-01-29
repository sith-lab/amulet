.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], DX 
AND RSI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], 16 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -73 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -28 
CMOVO RCX, RDI 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], -33 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -52 # instrumentation
LAHF  
MUL BL 
MOVZX EBX, BL 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RSI], 29 
MOVSX DX, DIL 
LEA AX, qword ptr [RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], DI 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], 76 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
LEA EAX, qword ptr [RDX + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
