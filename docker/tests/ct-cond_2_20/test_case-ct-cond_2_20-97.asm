.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 68 
AND RBX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RDI] 
ADD DIL, 81 # instrumentation
CMOVL EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RBX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DIL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EDI 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
SBB DIL, SIL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], AL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -92 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RDX 
NEG EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RBX 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RSI 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
