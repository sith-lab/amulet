.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
SUB RSI, -26 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RBX 
CMP AL, 3 
AND RDI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDI], 121 
AND RDI, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDX] 
ADD DIL, 122 # instrumentation
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RAX], -117 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -84 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], SI 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
