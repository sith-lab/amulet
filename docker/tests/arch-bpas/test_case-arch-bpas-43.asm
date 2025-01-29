.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -38 # instrumentation
ADC BL, BL 
SETZ BL 
SETNB BL 
NEG CL 
MOV EBX, 1957858525 
CMOVS RAX, RDI 
AND AL, -116 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], -33 
TEST EDI, 1438689368 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDI] 
JB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, 26 # instrumentation
SBB EDX, -73 
AND RDI, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RDI] 
CMP AX, 23502 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RAX, -607518711 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDI] 
NOP  
IMUL DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDX] 
SETNS DL 
TEST EAX, -141662828 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -6 
CMPXCHG DI, DI 
NEG CL 
OR AL, AL 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -111 # instrumentation
CMOVLE RCX, RAX 
BSWAP EAX 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
ADD DIL, 82 # instrumentation
CMOVLE RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], DX 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], 27 
MOVSX RDI, BL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RBX 
ADD DIL, 24 # instrumentation
CMOVS BX, CX 
CMOVZ SI, BX 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
