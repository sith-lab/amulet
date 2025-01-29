.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC SI 
AND RDX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RCX] 
CMOVNB RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOV RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], DX 
AND RDX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RDX] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RAX] 
ADD RBX, -101 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RBX], 18 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
