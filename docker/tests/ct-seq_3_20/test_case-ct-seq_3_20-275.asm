.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EDI 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
ADD DIL, -66 # instrumentation
ADC EAX, 971226310 
MOVSX RAX, AX 
AND RCX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RCX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -67 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RDI 
MOVSX BX, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], -7 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
CMOVLE AX, BX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RDX] 
CMOVNO BX, DI 
MOV RSI, 1271883243105700252 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
