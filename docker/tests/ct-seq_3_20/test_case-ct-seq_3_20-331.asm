.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
CMOVL EDI, EDI 
IMUL DL 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], SI 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDI 
AND RDI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDI] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -24 
ADC DIL, 38 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
INC ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 83 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
