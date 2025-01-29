.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL EDX 
AND RBX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -49 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], 35 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], BL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], -9 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDX], 1 
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI] 
ADD DIL, -36 # instrumentation
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], -1206154744 
AND RDX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RDX], 43 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], SI 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
