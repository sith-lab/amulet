.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], BX 
INC AL 
AND RCX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RCX] 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDX] 
MOVSX BX, BL 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RDX] 
ADD AL, SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RDX] 
SUB SI, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -123 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], -25 
AND RDX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
MOV RDI, -8184140696575595685 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RAX] 
ADC ESI, -109 
ADD EAX, -307722360 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
