.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RDI] 
SUB DIL, 118 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -65 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RSI] 
BSWAP RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RCX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RSI] 
CMP BL, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], 16 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], ESI 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI], 102 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 84 
AND RDI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -111 
MUL SIL 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
