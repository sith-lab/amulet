.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -4 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
CMOVLE EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RAX 
SBB CL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDX] 
ADC AL, -2 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
ADC EDI, -24 
MUL RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD DIL, -45 # instrumentation
CMOVB SI, DX 
SBB SI, -117 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -100 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], 88 
ADC BL, -94 
CMP EBX, -38 
CWD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
