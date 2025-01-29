.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDX] 
DEC RAX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
CLC  
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
ADD SIL, 1 
CMOVNO RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
STC  
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 38 # instrumentation
ADC RAX, -948282955 
CMOVO RCX, RSI 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -118 
MOV RAX, -6979507645738103288 
INC DL 
AND RBX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RBX] 
CLD  
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ESI 
SUB CL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RBX] 
IMUL RBX, RSI, -91 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, DL 
ADD BX, DX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
