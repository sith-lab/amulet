.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RAX 
INC DL 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -11 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RDI 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
CMOVNO DX, BX 
DEC CL 
AND RAX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -104 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], ESI 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
