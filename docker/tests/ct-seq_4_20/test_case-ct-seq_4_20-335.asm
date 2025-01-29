.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -91 # instrumentation
CMOVNLE RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], ECX 
MOV ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -89 
CMOVP ECX, EDX 
CMOVNL EDI, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], CL 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
CMOVL RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -30 # instrumentation
ADC BL, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 127 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], BL 
CMP ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
