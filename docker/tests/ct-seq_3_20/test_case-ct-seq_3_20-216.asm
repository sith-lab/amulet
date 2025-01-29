.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EDX 
ADD ESI, -88 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 98 
MOVZX EAX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RSI] 
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -118 
AND RDI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RAX 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -111 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 4 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -3 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 108 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -80 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
