.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 79 # instrumentation
ADC AL, 102 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], ECX 
AND RAX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -84 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
MOVSX SI, AL 
AND RAX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
MUL ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -55 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], -101 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
