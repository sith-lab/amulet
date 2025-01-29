.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 46 # instrumentation
SBB DL, 113 
CMOVNS ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], -72 
CMOVLE EAX, ESI 
CMOVL ECX, ECX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -95 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
CMOVP EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RSI] 
IMUL RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
CMOVL RSI, RDI 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -49 # instrumentation
CMOVNP EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DL 
MOVZX ECX, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -12 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], -68 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDI] 
CMOVNS EDI, EAX 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
ADC CL, 106 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], -59 
ADD EAX, 1934331486 
CMP AL, -80 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], DI 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
