.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG RDI 
CMOVB RCX, RSI 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
INC BL 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -59 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RSI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RBX 
AND RAX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RAX] 
ADD RAX, 877604164 
SBB DI, -115 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EAX 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EAX 
XCHG RSI, RDI 
SBB AX, -5147 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 48 
CMOVO AX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
