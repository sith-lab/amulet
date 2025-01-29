.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RDX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], BX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -62 # instrumentation
ADC SI, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RBX] 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], CL 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], SI 
CMP EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 62 
LEA AX, qword ptr [RDI + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
