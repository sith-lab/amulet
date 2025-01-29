.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RAX] 
CMOVNLE RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], CX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], 54 
AND RDI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDI], 89 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -21 
SUB RAX, -66 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], 7 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DIL 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
