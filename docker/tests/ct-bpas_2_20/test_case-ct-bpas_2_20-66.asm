.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -81 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RBX] 
ADC EAX, -42 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], -90 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -49 
IMUL SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], 64 
IMUL BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -110 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
