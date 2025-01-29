.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
IMUL BX 
OR AX, DX 
AND RCX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], 107 
XOR CX, 61 
AND RDX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RDX] 
BSWAP RBX 
SBB CL, -74 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, BL 
CMOVBE BX, AX 
NOT DL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
TEST ESI, -223349717 
CMP CX, -43 
AND RAX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RDI 
SBB AX, -29416 
AND DIL, -70 
SBB BL, SIL 
ADC RAX, 1668352223 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], -12 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], 96 
BSWAP RBX 
XCHG ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RBX] 
AND AL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -52 # instrumentation
SBB DL, AL 
AND RDI, 0b1111111111111 # instrumentation
OR RAX, qword ptr [R14 + RDI] 
IMUL DI, DX, -59 
CMOVNB RSI, RSI 
CMP SIL, BL 
AND RSI, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RSI] 
XOR RBX, 106 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
NEG SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
