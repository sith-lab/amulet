.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
CMP CL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], 87 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RDX] 
MOV BL, 57 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI], -13 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
ADD DIL, 5 # instrumentation
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NEG CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RBX] 
MOVZX EBX, DL 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 56 
CMOVO DX, BX 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RCX] 
MOVZX SI, SIL 
AND RDX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -59 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 32 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
