.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, -111 # instrumentation
CDQ  
SETNS SIL 
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
ADD DIL, -64 # instrumentation
CMOVNP EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
CMP AX, 8075 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RCX] 
XADD DL, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
OR ECX, EBX 
CMP SIL, SIL 
CBW  
BSWAP EDX 
MOV EAX, 1299956310 
IMUL RCX 
CMP DL, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], -27 
OR DIL, 78 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
IMUL RSI, RSI 
SETNO AL 
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
TEST EAX, 1389852690 
INC BL 
SBB EAX, 1645777433 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], 11 
DEC DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 35 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], BX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -12 # instrumentation
CMOVB EAX, EAX 
SETLE BL 
AND RAX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDX], DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], 6 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 19 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RBX], 2 
OR EAX, EAX 
CMOVNZ DX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
