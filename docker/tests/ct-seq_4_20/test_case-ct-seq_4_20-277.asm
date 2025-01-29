.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RAX] 
SUB ESI, 123 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDX], -106 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], DX 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -113 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], AL 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DL 
INC ECX 
ADC CL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDX] 
ADD AX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CLC  
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 70 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], 8 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
