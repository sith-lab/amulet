.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 53 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -38 # instrumentation
CMOVP DX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 24 # instrumentation
CMOVNB SI, AX 
CMOVO SI, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], -18 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
LEA SI, qword ptr [RDX + RDX + 43001] 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
STC  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -37 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], AX 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DX 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], 57 
CMP EAX, -486568243 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
