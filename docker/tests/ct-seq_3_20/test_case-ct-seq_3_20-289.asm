.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RSI] 
ADC RDI, -23 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], -90 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], DI 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RDX] 
CMOVB EAX, EDX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], 90 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
