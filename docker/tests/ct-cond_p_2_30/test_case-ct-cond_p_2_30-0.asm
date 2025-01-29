.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL BX, AX, 50 
MOVZX CX, AL 
AND RSI, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], 93 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], DX 
SBB AL, -121 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
XCHG RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RDX] 
CMOVNL RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], ESI 
INC ECX 
ADC BL, AL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], AL 
SBB SIL, 85 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 122 # instrumentation
MOVZX BX, DL 
SBB ECX, -3 
XCHG AL, CL 
CMOVB RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RBX] 
CMOVNBE EBX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 111 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], ESI 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EAX 
CMOVNO RCX, RSI 
SBB DX, -66 
AND RBX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RBX] 
LEA RBX, qword ptr [RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
