.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
ADC EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -73 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EDI 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RAX] 
MOVZX EDI, DL 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 22 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
SBB RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 93 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RSI] 
CMOVS RBX, RBX 
CDQ  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
