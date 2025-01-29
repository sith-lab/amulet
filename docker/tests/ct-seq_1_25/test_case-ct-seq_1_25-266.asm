.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 48 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RSI] 
CMOVZ RAX, RBX 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], 36 
STD  
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RSI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
CBW  
SAHF  
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
ADD BL, 105 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
IMUL DX, DI 
MOVSX RBX, DI 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
SBB DIL, 74 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
