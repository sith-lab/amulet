.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RCX] 
SBB AL, -39 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -39 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 103 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RAX 
CMOVNLE EDX, EAX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 65 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 15 # instrumentation
ADC EAX, 551500027 
CBW  
AND RBX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -72 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], SIL 
CMC  
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 8 
XCHG BL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
