.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], DI 
SETNP SIL 
NOT RDX 
MOVSX RDI, DL 
AND RSI, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RSI] 
CMOVNLE RSI, RDX 
CMP RAX, 899171088 
AND EAX, -948916990 
AND RDI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDI] 
ADD AL, 112 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
ADC DI, 39 
CMP DIL, AL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
IMUL RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDX] 
SBB AL, -111 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -21 
TEST AX, SI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
ADC RSI, RBX 
CMOVNB EAX, EAX 
SBB DI, -115 
SETNO BL 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 80 # instrumentation
SETL DIL 
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
CLD  
AND RBX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], AL 
SUB AL, CL 
CMOVB AX, CX 
CMOVNBE ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], -7 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVZX ESI, BX 
MUL CL 
TEST RAX, -670711065 
SETP BL 
ADD AL, AL 
AND RSI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
