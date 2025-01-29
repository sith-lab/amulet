.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RDX] 
OR CX, 0b1000000000000000 # instrumentation
BSF DX, CX 
STC  
AND RSI, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDI] 
XCHG DI, AX 
JMP .bb_main.1 
.bb_main.1:
SUB AX, -18516 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 22 
CMOVNLE RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RAX] 
IMUL EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], ECX 
ADD EAX, 761205407 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 1 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
BSWAP RSI 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
CMOVZ RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], SIL 
ADD AL, AL 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 120 # instrumentation
CMOVNL CX, AX 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RCX 
SBB ECX, 48 
CMOVNP EDI, EBX 
SBB RAX, -1238882628 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
