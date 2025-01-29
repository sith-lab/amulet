.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
NEG CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], -57 
CMP AL, -114 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], CX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RDI] 
ADD DIL, 60 # instrumentation
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RSI 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -44 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RDX] 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], 63 
AND RAX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
