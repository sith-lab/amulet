.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EDX, 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
CMP CX, CX 
CMC  
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RDI] 
LOOP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 50 
NEG CL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, -20 # instrumentation
MOVZX RBX, AL 
LAHF  
CMP RDX, RAX 
ADC EAX, 2145661867 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -91 
CLC  
AND RCX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RCX] 
SUB BX, 24 
JMP .bb_main.3 
.bb_main.3:
CWDE  
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -17 
CMOVO AX, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -42 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RSI] 
XCHG EDX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 78 
AND RCX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RCX], -14 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], -1614472810 
CMOVS EBX, ECX 
CMOVNP CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
