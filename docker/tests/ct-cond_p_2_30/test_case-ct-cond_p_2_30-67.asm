.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RSI] 
SUB RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], BL 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
OR EDX, 1 # instrumentation
DEC SI 
ADD SI, DX 
MOVZX CX, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -55 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EAX 
NEG RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], -12 
CMOVBE RDI, RBX 
IMUL DX 
MUL DIL 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 97 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RBX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 48 
SUB DI, 90 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
