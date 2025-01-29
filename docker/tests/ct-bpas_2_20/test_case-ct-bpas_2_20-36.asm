.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV SIL, 117 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
AND RDI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], SIL 
ADD DI, -69 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], DI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
ADD CX, -121 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -51 
CMOVNP RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RBX] 
XCHG DI, AX 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
