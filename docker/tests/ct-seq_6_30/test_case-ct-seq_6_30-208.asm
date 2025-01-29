.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -70 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DL 
ADC SIL, -32 
NEG DI 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
SUB EAX, EBX 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 50 
AND RDX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
SUB EAX, 1033238362 
AND RDI, 0b1111111111111 # instrumentation
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RDX] 
ADD EBX, 60 
CMOVNP RAX, RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RSI 
JMP .bb_main.4 
.bb_main.4:
SAHF  
MOVZX RDX, AX 
IMUL RSI 
AND RDX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDX], 18 
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], AL 
AND RCX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RCX] 
CMOVZ RCX, RBX 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, -83 # instrumentation
CMOVNB DI, SI 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 2 
CMOVNZ RCX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
