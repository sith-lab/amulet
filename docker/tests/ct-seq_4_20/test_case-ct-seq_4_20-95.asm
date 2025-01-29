.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 108 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], SIL 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RSI 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DIL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RCX] 
STC  
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -89 
AND RCX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RCX] 
CMOVL BX, DX 
CMOVZ RDX, RSI 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDX 
IMUL BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
