.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RAX] 
SBB RAX, -1742389218 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -115 # instrumentation
MOV DL, -13 
SBB BL, DL 
ADC AX, -73 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 107 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 32 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
ADC RBX, 106 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -75 # instrumentation
SBB AL, DL 
ADC RAX, 846616366 
CMP RSI, -88 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], SIL 
CMOVNS EDX, EDI 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -121 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDX 
SUB AX, -6617 
JMP .bb_main.5 
.bb_main.5:
DEC DL 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], ESI 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
CMP DIL, 105 
MOV ESI, 580222268 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 124 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
