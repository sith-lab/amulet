.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RDX, RAX, 53 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RSI] 
MOVSX EDI, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RAX] 
INC CL 
ADC BL, 77 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
ADD RAX, -1732980654 
ADC AL, DL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
STC  
ADD ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -46 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 46 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
