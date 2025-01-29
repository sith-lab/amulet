.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC EDX 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], SIL 
SBB AX, -4095 
CMP AX, 26608 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], BX 
XCHG RBX, RAX 
CMOVNS DX, BX 
XADD DL, CL 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR SIL, -56 
SETBE SIL 
CMOVZ EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RAX] 
TEST EAX, ECX 
CMP AX, -14260 
SBB AX, 21451 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
OR RAX, RDI 
SETBE BL 
BSWAP EDI 
SETNZ SIL 
AND RCX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDX], RSI 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
AND AL, -32 
MOV CL, DL 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
AND DI, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -100 
CMC  
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDX] 
OR AL, 20 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
IMUL AX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
ADD SIL, -91 # instrumentation
LAHF  
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND EAX, -1508267067 
XCHG BL, AL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
