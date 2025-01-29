.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 36 
AND RSI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RBX 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RAX 
AND RCX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
