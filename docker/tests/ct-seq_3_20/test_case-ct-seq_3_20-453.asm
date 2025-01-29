.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], -51 
AND RBX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RBX] 
CMOVNB RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RBX] 
MOVSX RDI, AL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -126 # instrumentation
CMOVNBE RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
ADD DIL, -22 # instrumentation
CMOVB EBX, dword ptr [R14 + RAX] 
LAHF  
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -15 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDX] 
ADC RAX, 335328050 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
ADD DIL, 48 # instrumentation
CMOVNP DX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
