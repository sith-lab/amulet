.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 72 # instrumentation
XCHG CL, BL 
CMOVO SI, AX 
MOVZX RAX, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 42 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDI 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
AND RCX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RCX] 
MOV SIL, 7 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
LEA ECX, qword ptr [RDI] 
IMUL DI 
ADD DL, 25 
ADD ECX, EBX 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -63 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
CMOVP CX, DI 
CMOVNZ RSI, RAX 
MUL CX 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 124 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], SI 
ADC EAX, 1041470971 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -71 
CBW  
ADC SI, AX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 57 # instrumentation
MOV AL, 101 
CMOVNS SI, BX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
