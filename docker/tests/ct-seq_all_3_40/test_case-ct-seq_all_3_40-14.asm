.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOP  
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
TEST AL, 33 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RCX 
AND RSI, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RSI] 
SETP CL 
AND DIL, 18 
SBB RAX, -1875479789 
DEC AL 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], 9 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], ECX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RAX 
AND DL, 122 
MOV CL, -94 
CMP RBX, RDX 
SBB DI, 77 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDI], SI 
ADD AX, 32637 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RSI] 
ADD ESI, -8 
IMUL RAX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RCX] 
CMOVNO EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -51 
SUB BL, -48 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RBX] 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RAX] 
STC  
CMP AX, 13533 
AND RSI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RSI] 
AND DIL, 57 
AND RDI, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], -62 
NEG RCX 
AND DL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
