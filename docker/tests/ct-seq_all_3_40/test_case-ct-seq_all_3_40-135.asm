.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
CMOVB DI, AX 
CMOVB RSI, RAX 
CMOVL RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RDI 
SUB RAX, 1841295211 
IMUL CX, SI 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 118 # instrumentation
CMOVNBE SI, BX 
AND EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -114 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -16 
CMOVB RBX, RCX 
CMOVLE ESI, EAX 
CLD  
CMOVO RAX, RDX 
TEST RDI, RSI 
MUL BL 
AND AX, 9317 
CMOVO RDX, RDX 
OR AL, BL 
TEST AX, -3602 
ADC BX, SI 
SBB DX, CX 
OR BL, BL 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RSI 
SETNO BL 
XOR SI, SI 
CMOVNL RSI, RAX 
SBB BL, -30 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RDX] 
OR SI, 0b1000000000000000 # instrumentation
BSR DI, SI 
CMP DL, DL 
SETNB SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EBX 
CMOVBE ESI, EBX 
CMOVNLE AX, CX 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RDI] 
ADC SIL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
