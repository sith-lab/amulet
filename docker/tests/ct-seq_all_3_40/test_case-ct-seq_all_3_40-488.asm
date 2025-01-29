.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 58 # instrumentation
CMOVNBE RCX, RSI 
AND RDI, 0b1111111111111 # instrumentation
AND ECX, dword ptr [R14 + RDI] 
XOR EAX, 1670705027 
CMP EAX, 42 
ADD CX, 13 
SETBE BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RDX] 
XADD ESI, ECX 
CMOVNL CX, BX 
CMOVZ EBX, ECX 
IMUL CX, DX 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
TEST AX, -29328 
CMC  
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -94 
AND RAX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RAX], -112 
OR AX, -8681 
TEST RSI, RSI 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RSI] 
XCHG SI, AX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RAX] 
CMOVL CX, BX 
SUB DL, 94 
SUB RCX, RBX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
SETNLE BL 
AND DIL, DL 
AND RSI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RSI], DI 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
OR EAX, 85 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], DL 
CMOVS DX, SI 
CMOVB BX, BX 
CLC  
ADD AL, 19 
ADD EAX, 1346261426 
CMOVB ECX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
