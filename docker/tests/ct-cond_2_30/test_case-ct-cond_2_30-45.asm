.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP DX, AX 
XCHG AX, AX 
NEG RAX 
MOVSX EDI, BL 
XCHG RDX, RSI 
CMOVNS EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RDX 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RAX] 
SBB RDI, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -46 
ADC AL, 44 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], BL 
NEG CL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
MOVZX RDX, DX 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EDX 
AND RBX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RSI] 
IMUL EDI 
SBB DIL, 96 
CDQ  
AND RCX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RCX], 71 
CMP BL, CL 
CMOVNZ EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
