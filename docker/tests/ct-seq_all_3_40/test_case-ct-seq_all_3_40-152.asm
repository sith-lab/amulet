.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -6 # instrumentation
CMOVNBE RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], 110 
AND RDI, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RDI] 
CMOVS EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDI] 
XOR RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDX] 
ADC CX, 69 
SBB SIL, BL 
CMOVNLE DI, DI 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XCHG EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 63 
SETZ BL 
IMUL RCX, RCX 
ADC RAX, RBX 
BSWAP ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RAX] 
AND BL, DL 
IMUL RBX, RBX 
CLD  
XCHG EDX, ESI 
SBB AL, 43 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], RCX 
AND RDX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDX] 
NEG RAX 
XCHG DIL, DL 
JMP .bb_main.2 
.bb_main.2:
CDQ  
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], AL 
CMOVNBE EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], 49 
AND RBX, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RBX] 
MUL DL 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD SIL, -83 # instrumentation
SBB BL, AL 
CMOVL SI, AX 
SBB AX, 108 
AND RDI, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RDI] 
CMP AL, -91 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], -42 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
