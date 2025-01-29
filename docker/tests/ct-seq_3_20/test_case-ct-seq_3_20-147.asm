.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -71 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
MOVSX RBX, DL 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], CX 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
MUL RSI 
ADD AL, 63 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RAX] 
CWD  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], 64 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], BL 
AND RSI, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
