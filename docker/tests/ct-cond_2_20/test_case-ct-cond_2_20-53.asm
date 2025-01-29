.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
CMOVNS DI, DX 
AND RSI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RBX 
CMOVNLE SI, CX 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RCX 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
CMOVBE EAX, ECX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 123 
IMUL CL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], SIL 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], BX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
CWDE  
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -118 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
