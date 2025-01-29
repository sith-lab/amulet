.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RCX 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -77 
CMOVP RCX, RCX 
CMOVB RDI, RDI 
IMUL RAX, RDX, 46 
CMOVO BX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RDX] 
ADD AL, 90 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
BSWAP RDI 
JS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RSI] 
ADD BL, SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 81 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RDI] 
CMOVZ EDI, EDI 
SUB AL, -112 
DEC EDI 
CMOVNLE SI, BX 
STC  
SBB RCX, RDI 
NEG CL 
JMP .bb_main.3 
.bb_main.3:
ADD SI, BX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], BL 
MOVSX EDI, BL 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], DL 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RAX] 
SBB ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
