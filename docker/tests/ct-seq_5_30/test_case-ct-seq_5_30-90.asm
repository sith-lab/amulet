.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -8 # instrumentation
SBB AX, 30399 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RAX] 
IMUL EBX, ESI, 1 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -22 
CMOVO RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RCX] 
ADC DI, AX 
MOVSX DI, CL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], AL 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 15 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
NEG BX 
CMP EAX, -2128454397 
ADC RDI, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RBX] 
CMOVNZ RDI, RDI 
IMUL RAX, RDI, 25 
IMUL AX 
ADD DIL, -10 # instrumentation
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -64 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
CMOVNLE EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -5 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
SUB ESI, -85 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
CMOVNL SI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
