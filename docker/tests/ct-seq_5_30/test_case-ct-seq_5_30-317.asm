.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EAX, ESI 
DEC DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RBX] 
XCHG EAX, EAX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
ADC EAX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RBX] 
SBB BL, BL 
NEG RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RBX] 
XCHG EAX, EDI 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -39 # instrumentation
CMOVNZ EDX, EDI 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -61 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RDX] 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], AL 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], SI 
CMOVNS RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], -78 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 103 
SUB EAX, -1489073609 
ADC RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], -93 
CMOVNP ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RSI] 
ADD DI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
