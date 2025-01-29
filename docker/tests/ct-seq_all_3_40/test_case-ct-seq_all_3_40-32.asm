.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], 24543 
SBB RAX, 1165704423 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], 74 
ADD AX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 77 
ADD AL, BL 
CMOVNO DX, BX 
SBB DX, BX 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RBX], ESI 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], -128 
XOR AL, -32 
XOR AL, 89 
ADC RCX, 59 
LEA EBX, qword ptr [RCX + RBX + 49867] 
TEST EAX, 1968368735 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EBX 
SBB AL, 32 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -42 # instrumentation
ADC AX, 23455 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], BL 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], -114 
CMOVP RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], -73 
OR DX, 38 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
SUB DL, BL 
XCHG ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
SETNP AL 
INC AL 
ADD RDX, 109 
CMOVO ECX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
