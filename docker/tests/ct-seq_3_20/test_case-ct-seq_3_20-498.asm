.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], DX 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -12 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 4 # instrumentation
CMOVO DI, AX 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], 73 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], AX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -48 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDI] 
XCHG AL, BL 
AND RDI, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EAX 
SBB ECX, ECX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -93 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
