.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 120 # instrumentation
CMOVS ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
SBB AL, -20 
ADC BL, 59 
AND RDI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -17 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
NEG DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 81 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], -9 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
