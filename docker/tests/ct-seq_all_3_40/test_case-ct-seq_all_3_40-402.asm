.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], DI 
DEC CL 
CMOVLE RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RCX 
CMOVNLE EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RCX] 
SBB DIL, DL 
CMOVNLE EBX, EDI 
SUB AL, 43 
XCHG CX, AX 
CMOVL AX, AX 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
ADD AL, 2 
JMP .bb_main.1 
.bb_main.1:
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -15 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], 99 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
CLC  
CMC  
ADD RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
XOR AX, -104 
SETP CL 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], CL 
SETL DL 
CMOVNS EDX, ESI 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND AX, 7758 
AND RDX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDX] 
NEG DIL 
SETLE DL 
AND RBX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RDI] 
IMUL DL 
TEST DL, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], -96 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
