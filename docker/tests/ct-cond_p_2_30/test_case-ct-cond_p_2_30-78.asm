.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
ADC AL, 55 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], 8 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RAX] 
CMOVZ RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
CMOVNB CX, BX 
SBB DIL, SIL 
IMUL EDX, EAX 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 92 
SBB RAX, 1537532143 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -53 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EDI 
MOV EBX, -1277638247 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP CL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
CMOVNS RBX, RAX 
INC DIL 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RBX 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -99 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDX 
ADD SIL, -103 # instrumentation
SBB AX, 17391 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RSI] 
NEG AX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RDI] 
CMP AX, -20906 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
