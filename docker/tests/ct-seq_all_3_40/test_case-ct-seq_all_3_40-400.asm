.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], SI 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 14192 
ADC BL, 112 
MUL ECX 
AND RDI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDI] 
CMOVZ ECX, EBX 
MOV RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RBX] 
XADD AL, CL 
OR AX, 14424 
SETNB CL 
AND AX, -113 
CMOVBE RBX, RAX 
AND AL, 14 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RDI] 
AND RDX, 12 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 120 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RBX 
MOV CL, SIL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RDI] 
ADD EBX, -90 
SAHF  
SETNZ DIL 
IMUL RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 19 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -80 # instrumentation
CMOVO AX, DI 
MUL DIL 
ADC RDI, 72 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], -108 
ADC RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], 26325 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RAX 
CMP BX, -34 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RAX] 
NOT RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
