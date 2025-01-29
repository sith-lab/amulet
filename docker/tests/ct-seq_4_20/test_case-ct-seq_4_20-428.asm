.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 52 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 1359464980 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], BX 
JMP .bb_main.1 
.bb_main.1:
NEG CL 
MOV DX, 3477 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -111 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 23 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -21 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 1807799244 
ADC CL, DL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], DI 
AND RCX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RCX] 
CMOVO DI, BX 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -120 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -54 # instrumentation
CMOVNZ BX, DX 
DEC EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
