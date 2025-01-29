.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], 20 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -67 # instrumentation
ADC RSI, -121 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], DI 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EBX 
ADD RAX, -904847170 
IMUL EAX, ESI, -88 
CLD  
OR SI, 0b1000000000000000 # instrumentation
BSF DI, SI 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RAX] 
DEC EBX 
AND RCX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RBX 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -16 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
