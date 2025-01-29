.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
NOT RCX 
NOT CX 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RCX 
CMOVNP BX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
ADD RBX, 109 
SBB EDX, EDI 
MUL RDI 
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
XCHG RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], -66 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
MOV RDI, 2111418811032093184 
SUB RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], CL 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], -108 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], BL 
SETNLE CL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RSI 
OR RAX, 345592247 
TEST SIL, 91 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RCX] 
SAHF  
CMOVB BX, BX 
MOVSX DI, AL 
DEC AX 
CBW  
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], CX 
XOR RDI, RSI 
AND AL, 44 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
MOVZX EDI, DL 
TEST AL, -29 
OR DX, 0b1000000000000000 # instrumentation
BSR BX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], 88 
CMOVNB RSI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
