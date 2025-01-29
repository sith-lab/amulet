.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], CX 
MUL AL 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -96 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], -126 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 6 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -37 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -39 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], 98 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -80 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], DX 
INC DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
