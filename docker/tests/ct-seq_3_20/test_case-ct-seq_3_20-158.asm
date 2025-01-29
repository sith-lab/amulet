.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -45 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX], 13 
AND RCX, 0b1111111111111 # instrumentation
SBB AX, -3098 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 23 # instrumentation
ADC SIL, DIL 
CMOVNLE BX, CX 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 82 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], 100 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
CMOVNBE ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDX] 
IMUL RAX, RSI, 126 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RBX], 114 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
