.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], -962509440 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EAX 
CMOVNBE EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], ESI 
AND RAX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RCX] 
AND DL, DIL 
SETP DL 
OR AL, -124 
MOVZX EBX, DX 
CMOVBE RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
XADD AL, DIL 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
SUB RBX, RAX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], -48 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -127 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], 14 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], ECX 
CMOVNL EBX, EBX 
CMOVNS CX, BX 
ADD AL, 73 
CMOVNBE RBX, RCX 
IMUL DI 
ADD SIL, 74 # instrumentation
CMOVL BX, DI 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DL 
SBB DL, 1 
TEST DI, 23133 
AND RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], EBX 
INC CL 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
XOR DIL, -34 
SBB AX, 16331 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
