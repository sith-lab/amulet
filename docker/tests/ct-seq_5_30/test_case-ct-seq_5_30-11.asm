.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -56 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -81 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 24 
ADC RAX, -1041563577 
AND RDX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDX] 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, 58 # instrumentation
CMOVNP SI, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EAX 
CMOVNO RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
SUB CL, SIL 
AND RBX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RBX] 
CMP RAX, 1711879425 
JMP .bb_main.2 
.bb_main.2:
OR DL, 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RAX] 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
AND RCX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
JMP .bb_main.3 
.bb_main.3:
IMUL CX 
ADD SIL, -13 # instrumentation
CMOVLE RDX, RCX 
CMOVZ RSI, RSI 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RSI] 
ADC RCX, RDX 
CMOVNLE AX, DX 
CMOVNO RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
