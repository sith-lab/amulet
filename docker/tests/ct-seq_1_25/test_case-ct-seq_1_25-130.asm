.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RSI], -60 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], 112 
MOVSX AX, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDI] 
CMOVP RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 111 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], DI 
AND RSI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RBX] 
SUB SI, -8 
CMOVNLE RDX, RAX 
ADC EAX, 237733781 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], DI 
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RAX] 
ADC DL, -108 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
