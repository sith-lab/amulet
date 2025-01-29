.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDI] 
CMOVNLE SI, DX 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RAX] 
XCHG EDI, EAX 
SBB EAX, -1961260834 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
MOVSX RDX, BL 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EAX 
JNBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, -21 # instrumentation
CMOVNB AX, CX 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], -122 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RBX] 
SBB RSI, 45 
ADD DL, 62 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RAX] 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 41 
CMOVNBE ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDX] 
SBB AX, -1372 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -91 
ADC DI, 41 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DIL 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 52 
CMOVB EDI, EDX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 1 # instrumentation
CMOVP DX, BX 
AND RDX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
