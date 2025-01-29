.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -60 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 39 
CMOVZ CX, SI 
ADC AL, -25 
DEC DX 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
ADD SIL, 103 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 115 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], DI 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
IMUL DI 
DEC SI 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
