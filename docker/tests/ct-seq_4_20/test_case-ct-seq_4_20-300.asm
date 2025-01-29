.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -121 
DEC CL 
AND RBX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], -70 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -84 
AND RCX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 75 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], SIL 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], DI 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RCX] 
SUB BL, CL 
IMUL CX, DX 
ADD DIL, 63 # instrumentation
CMOVL EBX, ECX 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RBX] 
CMOVZ ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
