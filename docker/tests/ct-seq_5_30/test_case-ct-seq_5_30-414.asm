.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP SIL, 112 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RAX 
OR DX, 1 # instrumentation
CMOVBE RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
SUB DIL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RCX] 
SBB AL, SIL 
CMOVO RDX, RDX 
SBB AL, -61 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
JNP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, -117 # instrumentation
CMOVNL RDI, RAX 
CMOVNLE ESI, EDI 
CMOVNL SI, CX 
XCHG EDI, EAX 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, 51 # instrumentation
CMOVLE RAX, RSI 
INC CL 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], DX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], BX 
CMOVS EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
STD  
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], 42 
JMP .bb_main.4 
.bb_main.4:
ADD AL, 109 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], SI 
SUB DL, BL 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DIL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RCX] 
CMOVBE RAX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
