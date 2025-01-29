.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], BX 
CMOVNLE EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RDX] 
CMOVLE RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RCX] 
MOVZX EDX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RDI] 
MOVZX RDX, AX 
MOV RSI, 6605306003335669475 
CMP DL, SIL 
ADC DL, -114 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDX] 
CMOVNB EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -22 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX DX, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RSI] 
ADC RAX, 1057845354 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RDI] 
CMOVP ECX, EDX 
SUB AL, -35 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], 97 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 58 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], DI 
AND RBX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
