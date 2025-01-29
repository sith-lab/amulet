.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX], -13 
MUL DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EBX 
CMOVS EAX, EDI 
DEC EAX 
CMOVLE ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
ADC EBX, -61 
CMOVO BX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
MUL BL 
CMOVO RAX, RDX 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EDI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SAHF  
CMP RAX, 1986040945 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
STD  
ADC RAX, 125 
SBB AL, -126 
MOVSX EBX, DL 
IMUL EDX, ECX, -93 
ADD RAX, 1961946166 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], SI 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
ADD DIL, 26 # instrumentation
CMOVZ RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -2239 
OR SI, 0b1000000000000000 # instrumentation
BSR BX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
