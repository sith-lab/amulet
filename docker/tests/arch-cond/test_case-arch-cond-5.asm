.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
OR SI, 0b1000000000000000 # instrumentation
BSF CX, SI 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
OR EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
SBB CL, 68 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 101 
CMP AL, 1 
IMUL EBX 
CMPXCHG BL, BL 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], AX 
XOR DX, 118 
XCHG AX, AX 
NEG RAX 
CMOVZ EDX, EDI 
XADD RBX, RDI 
MOV EDX, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
XCHG BL, CL 
TEST DL, AL 
ADD RAX, 58 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RDX 
AND RAX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
MOV AL, -99 
ADD RSI, 111 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 124 # instrumentation
CMOVZ EDX, EBX 
MOVSX RCX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DL 
OR RAX, -1399625984 
MOVSX RDI, DIL 
NEG DL 
CMOVNL RAX, RBX 
SETB CL 
INC RSI 
CMOVNBE RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], BL 
CMOVNL ECX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
