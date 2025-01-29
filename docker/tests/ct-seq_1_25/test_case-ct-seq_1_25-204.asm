.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], ECX 
MOV DL, DL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -69 
SBB SI, 22 
MUL DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDX] 
ADC RDX, 80 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
MOV SI, DI 
CMOVB DI, CX 
AND RCX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], SI 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -45 
MUL SI 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RDI 
AND RDX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 123 
AND RDI, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RCX] 
OR DX, 0b1000000000000000 # instrumentation
BSF DX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
