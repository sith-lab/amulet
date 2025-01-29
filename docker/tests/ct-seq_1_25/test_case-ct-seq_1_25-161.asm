.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
ADD SIL, 3 # instrumentation
CMOVS RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EAX 
CMOVS EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
SUB BL, BL 
CMOVNS DI, AX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RSI], 125 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
BSWAP RBX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RCX 
SUB RDI, RDX 
CMOVNL EDI, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
CMOVNZ RAX, RDX 
CMOVNBE RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
