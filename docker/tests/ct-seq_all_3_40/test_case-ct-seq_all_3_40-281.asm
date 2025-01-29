.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
TEST BL, 39 
SETNB DIL 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EDI 
SUB SIL, 5 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], 5 
TEST SIL, -125 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], -115 
SBB BX, 95 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DL 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND CL, BL 
XOR RCX, RDI 
SUB DI, 24 
ADC AL, -19 
IMUL DL 
CMC  
ADC AL, 98 
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
IMUL SIL 
ADC RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], EDI 
JMP .bb_main.2 
.bb_main.2:
BSWAP RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], BX 
NOP  
IMUL DX, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
DEC CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], EAX 
XOR EDI, EBX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RSI] 
SUB SI, BX 
CMOVO EBX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
