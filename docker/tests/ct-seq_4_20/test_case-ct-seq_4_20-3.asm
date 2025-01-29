.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 66 # instrumentation
SBB AL, 39 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -15 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -56 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RBX] 
OR DL, 1 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RBX] 
MOVZX CX, AL 
AND RBX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RBX] 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CWDE  
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI], 76 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -75 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
