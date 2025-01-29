.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
CMP DX, 12 
SUB AX, 76 
CMP CL, -13 
AND RBX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RBX] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RDI], 115 
IMUL AX, SI 
MOVZX EDX, BL 
CLC  
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDI] 
XCHG AX, SI 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RDX 
AND RBX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EBX 
CMOVNS DX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
