.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 64 # instrumentation
CMOVBE EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RDI] 
INC DX 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 91 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV RDI, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDI], 58 
STC  
ADC EAX, -877260973 
AND RAX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
