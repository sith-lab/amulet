.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 1179328877 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], -6 
XCHG BX, SI 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
CMOVNO DX, AX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 17 
IMUL DX, BX 
IMUL RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -105 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
MOVSX RDX, SI 
CMOVP EDI, EAX 
ADC RAX, -517959383 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EDI 
CMOVLE EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDX 
OR DL, 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], -19 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
