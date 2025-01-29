.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RDI, 124 
MOV AL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDX] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EBX 
SUB AL, SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
ADD EDI, -44 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RCX] 
CMOVP EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX], -47 
ADD DIL, 95 # instrumentation
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 41 # instrumentation
CMOVNB DI, SI 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], 85 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RBX] 
ADD SIL, -37 # instrumentation
CMOVBE EDI, EDI 
MOVSX CX, BL 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RDX] 
XCHG RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDX 
DEC RAX 
CMOVO RAX, RSI 
CMP RDI, RDI 
MOVZX SI, SIL 
AND RCX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RCX] 
CMP EAX, 707022173 
XCHG DIL, AL 
CMOVO RAX, RBX 
LAHF  
IMUL ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
