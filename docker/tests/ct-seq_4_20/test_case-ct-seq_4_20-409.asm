.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -74 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -74 
AND RBX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RBX] 
NEG BL 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], CX 
CMOVNL EBX, EDX 
ADC RSI, -64 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDI] 
ADD DIL, -38 # instrumentation
CMOVLE ECX, EDX 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 116 
AND RSI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], ECX 
BSWAP RCX 
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
