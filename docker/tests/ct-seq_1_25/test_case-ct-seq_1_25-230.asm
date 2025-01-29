.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], 111 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -64 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 88 
CMOVS RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 43 
XCHG EDX, EAX 
SUB DI, BX 
CMOVP AX, DX 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 39 
CMOVB DX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RCX] 
CMP DL, DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 5 
SUB AL, -52 
SBB AL, BL 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDX 
SBB EAX, 31622051 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
