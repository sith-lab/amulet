.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 82 
CMP RDI, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RSI] 
CMOVBE RBX, RAX 
ADD DIL, SIL 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RCX] 
STD  
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RCX] 
ADC RBX, RDI 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RCX] 
SUB RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDI 
CMP AX, -21446 
MOVSX RDX, BL 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -39 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
DEC AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], 100 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 60 # instrumentation
SBB AX, -27262 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDI] 
ADD SIL, -114 # instrumentation
CMC  
SUB EAX, ECX 
SBB RCX, RAX 
XCHG BL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
