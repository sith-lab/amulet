.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
ADC BL, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 44 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX AX, DIL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], -68 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], 64 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -37 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
