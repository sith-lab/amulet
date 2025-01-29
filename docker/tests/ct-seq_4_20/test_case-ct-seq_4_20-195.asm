.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 50 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RAX] 
ADC AX, 12271 
AND RBX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RDX 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
SUB SI, BX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
OR EDX, 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
