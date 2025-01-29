.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], 82 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -62 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ESI 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 14 
MOVSX ESI, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RCX] 
CMP SIL, -34 
SUB DL, BL 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EBX 
CMOVNL DX, CX 
AND RBX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RBX] 
CMOVNP RSI, RDX 
SUB RDX, RSI 
ADD SIL, 114 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], 77 
INC RDI 
IMUL BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
