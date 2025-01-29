.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -13 # instrumentation
MOV SIL, 99 
CMOVNLE AX, SI 
NOT DL 
ADD DIL, -71 
SETB BL 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], EDI 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RAX] 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
CWD  
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
MUL CX 
TEST ECX, EDX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -40 
AND RCX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RCX] 
INC BX 
ADC AL, 85 
CMC  
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RSI 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDX 
ADD DIL, 70 # instrumentation
BSWAP EBX 
SETBE CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 96 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDX] 
AND DIL, -67 
SETNZ CL 
AND CX, 118 
JMP .bb_main.2 
.bb_main.2:
CBW  
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], SI 
AND ESI, -66 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RDI 
NOT BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RBX] 
XCHG EDX, EAX 
SETNLE DL 
TEST EBX, EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], DL 
OR RAX, -47766616 
IMUL RBX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
