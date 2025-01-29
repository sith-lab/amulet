.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 35 
AND RDI, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 116 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RDX] 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XCHG EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RSI] 
CMOVO EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 121 
SUB EDX, 122 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
MUL AX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
CMOVNP EAX, ESI 
SBB DIL, -81 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -111 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
