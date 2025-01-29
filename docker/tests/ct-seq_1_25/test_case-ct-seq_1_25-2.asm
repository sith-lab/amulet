.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 99 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DIL 
ADD AX, 11364 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RSI 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
IMUL DI 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RDI] 
CMP DI, 79 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDX] 
MOV CX, BX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RAX] 
CLC  
ADC EAX, -117 
AND RDI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDI] 
ADC SI, 2 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
