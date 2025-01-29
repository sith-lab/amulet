.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -43 # instrumentation
ADC SIL, 67 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
SBB DX, BX 
AND RAX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RAX] 
CMC  
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -124 
MUL BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RAX] 
CMOVO EBX, EBX 
MOVZX SI, CL 
AND RDI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDI] 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -1423072501 
INC BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], AX 
AND RAX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
