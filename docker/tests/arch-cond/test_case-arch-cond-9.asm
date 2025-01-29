.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
TEST AL, 109 
ADD RDI, RBX 
MOVSX RDX, DI 
ADC AL, -54 
SETNO AL 
AND RAX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RAX], ESI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
AND RDI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDI] 
ADD SIL, -75 # instrumentation
MOV DL, 24 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RDI], -27 
INC BL 
CMOVP RDI, RSI 
CMP AL, -28 
STD  
OR AX, 14918 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], RSI 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL RAX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], AX 
CMOVNS RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], SI 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
ADC RDX, 57 
AND RCX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RCX] 
SETNB BL 
SETNO AL 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
IMUL DL 
XOR EAX, -1682380186 
ADC AL, 89 
AND RAX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RAX], CX 
CMP AL, -28 
LAHF  
ADD BL, AL 
IMUL SI, SI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
NOT RSI 
NEG CL 
AND RAX, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RAX] 
SUB RAX, -887104550 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
