.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
SUB RAX, 891952893 
ADD AL, 90 
XCHG EDI, ECX 
CMPXCHG SIL, DIL 
AND CL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], 39 
OR RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDX], AX 
XOR DL, -117 
SBB SI, -18 
ADC EAX, 29 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RSI] 
SBB AL, 54 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
SUB EAX, ESI 
AND RBX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RBX] 
OR DL, -43 
TEST RAX, -69505526 
MUL RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BSWAP ESI 
LEA CX, qword ptr [RCX + RCX] 
INC EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -54 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
ADD SIL, 48 
AND AL, 84 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RAX] 
CMC  
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
STD  
CMP DX, -2 
STC  
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
CMP SIL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
