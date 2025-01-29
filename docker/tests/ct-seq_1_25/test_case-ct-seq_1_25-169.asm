.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RCX] 
SBB RDI, -80 
IMUL EAX, EBX, -57 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -37 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], BL 
CMOVNS EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RSI 
MOVSX RCX, DL 
CMOVNB ECX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], -33 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RSI] 
CLD  
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -59 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], 56 
CMOVNZ CX, SI 
SBB ESI, -109 
DEC DX 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
