.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RSI] 
SUB BL, BL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 103 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RDX 
AND RSI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RSI] 
ADC BL, -13 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], -1142048081 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -54 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
CMOVZ EDX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], 80 
CMOVNO RBX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
