.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
ADD DIL, 58 # instrumentation
CMOVBE RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -92 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -116 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], BX 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], AX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -379217634 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 57 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -117 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
CMOVNO RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], AL 
MOV ESI, -731922487 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 15766 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
