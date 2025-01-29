.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], 57 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, -119 # instrumentation
SBB RDX, RSI 
STC  
SUB RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], BL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -94 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RAX] 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
ADC ECX, 47 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], DI 
CMOVNL ECX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
