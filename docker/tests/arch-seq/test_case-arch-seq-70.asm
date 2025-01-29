.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -28 # instrumentation
CMOVNBE AX, DI 
CMOVO ESI, ESI 
XOR EAX, -1528532809 
ADC EAX, 1510732804 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
CMPXCHG RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
SETNO SIL 
SETNO CL 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
CMPXCHG AL, SIL 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ECX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -33 
CMOVP RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
CWD  
TEST AL, -25 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RBX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RBX] 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -85 # instrumentation
STC  
CMOVL RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], CX 
TEST RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RDX] 
TEST RCX, RBX 
IMUL DI, BX, -33 
AND BL, 4 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], 13 
XCHG BX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDX] 
CMOVNO BX, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], 119 
ADC AX, 27497 
TEST AX, -32651 
AND RSI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RSI] 
ADC ESI, 72 
SBB RAX, 50 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
