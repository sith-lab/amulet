.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RDI] 
CMP SI, -24 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -27 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVSX CX, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 19 
AND RBX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX], -49 
ADD DIL, -28 # instrumentation
CMOVNLE EDX, EAX 
CMOVBE CX, BX 
MOV RAX, 7512343068031171464 
AND RDX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
