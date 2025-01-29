.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -84 
XCHG RCX, RDX 
MOVZX SI, DIL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EDX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EAX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DI 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -96 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
CMOVS RBX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
