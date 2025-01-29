.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RAX] 
CLC  
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], 92 
MOV RBX, -4649280889668370641 
IMUL EDI 
JMP .bb_main.1 
.bb_main.1:
XCHG DIL, BL 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
SBB ESI, -43 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDX] 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDI 
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
XCHG BL, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 119 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RBX] 
CMOVNS BX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RDX 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RSI 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 26 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
BSWAP EDX 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -48 # instrumentation
CMOVNP BX, DI 
CMOVS SI, AX 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EDX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDI] 
CMOVZ EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RSI] 
SBB RAX, -1442187980 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
