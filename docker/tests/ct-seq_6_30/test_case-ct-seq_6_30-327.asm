.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -77 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 118 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], -106 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
MOV ECX, -673432436 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RSI] 
SUB AL, -25 
JO .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MOVSX RCX, DIL 
CMP EAX, -1417583507 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RSI] 
CMOVNB RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
CMOVNB RAX, RCX 
JNLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD DIL, -50 # instrumentation
CMOVBE RBX, RSI 
ADC EDI, ESI 
JLE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, -105 # instrumentation
BSWAP RSI 
CMOVNBE EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RCX 
OR DX, 0b1000000000000000 # instrumentation
BSF BX, DX 
JMP .bb_main.5 
.bb_main.5:
XCHG ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RCX] 
MOVSX EBX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RDI] 
ADD EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
