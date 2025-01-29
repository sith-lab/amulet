.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -99 
CMP DL, SIL 
CMPXCHG AL, DL 
SETLE AL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ECX 
ADD SIL, 71 # instrumentation
ADC DL, DL 
SUB ESI, EAX 
SETNB CL 
CMOVZ DX, AX 
ADC ECX, 119 
AND RDI, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDI] 
MUL SIL 
ADD SIL, -59 # instrumentation
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP AX, -29114 
AND RDI, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDI] 
MOV EAX, ECX 
SUB CX, -71 
CMOVNBE EDI, EAX 
XOR CL, BL 
SBB RSI, RDI 
XOR DIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], 110 
SETP AL 
CMOVNL SI, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
CWD  
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], 16266 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 21 # instrumentation
SBB AL, -114 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], -18 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 65 
CMOVNLE DI, DI 
CMPXCHG CX, AX 
ADD AX, 45 
AND BL, 78 
CMP RAX, 92 
AND RDI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RDI], -38 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 108 
AND RAX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RAX] 
ADD AL, -105 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
