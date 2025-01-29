.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RSI] 
MOVSX ESI, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RDX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RAX] 
MUL CX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EBX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 24336 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], -109 
CMOVLE RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EDX 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DL 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RAX 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
ADD SIL, -68 # instrumentation
CMOVLE RAX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
