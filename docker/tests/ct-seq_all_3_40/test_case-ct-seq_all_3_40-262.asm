.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RAX], RAX 
AND RAX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RAX] 
CMC  
AND BL, 23 
ADD RDX, -116 
AND DI, 101 
MOV CL, BL 
SETP CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RAX], RDX 
AND RCX, -19 
IMUL RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], DI 
XCHG CL, AL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 104 # instrumentation
SETL AL 
OR CL, 13 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RBX 
BSWAP RDX 
MOVSX RCX, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], 31 
XOR BX, AX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC AL, 110 
SETNP DIL 
CLC  
LEA RDI, qword ptr [RBX + RSI + 41925] 
CMC  
OR SI, 0b1000000000000000 # instrumentation
BSF CX, SI 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], EBX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], -107 
MOVSX RBX, DX 
TEST DL, DL 
SUB AX, -7904 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RDI] 
ADD SIL, -21 # instrumentation
ADC RCX, 70 
INC AX 
AND RBX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
