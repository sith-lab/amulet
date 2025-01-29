.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RBX] 
CMC  
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 14 
NEG AX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
INC DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RDI] 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -96 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], CX 
SUB BX, DX 
AND RCX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RCX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RCX 
ADD SIL, 113 # instrumentation
ADC ECX, 1 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
