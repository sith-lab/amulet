.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AL, -14 
MUL RSI 
MOVZX EBX, AL 
AND RBX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDX] 
ADC AL, 49 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RDI] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], BX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
SUB AL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RAX] 
CMOVP RDX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
