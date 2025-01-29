.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -99 # instrumentation
ADC RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -67 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD EAX, 20626474 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], 21 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 21 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], AX 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
