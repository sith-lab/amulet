.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -52 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], 718388693 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
CLC  
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -112 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 12 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -48 
ADC EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RCX] 
MOVSX AX, AL 
CMOVBE EAX, EDI 
LEA DI, qword ptr [RDX + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
