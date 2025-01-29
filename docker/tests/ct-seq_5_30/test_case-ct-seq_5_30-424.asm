.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 7 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], 62 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RCX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -11 
DEC SI 
CMOVZ RAX, RDI 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -56 # instrumentation
SBB RSI, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EDI 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  
AND RAX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
ADD SIL, -89 # instrumentation
CMOVO DI, DI 
CLC  
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 86 # instrumentation
CMOVS DI, BX 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 96 # instrumentation
CMOVB DX, DI 
SBB AL, -16 
SBB AX, 8929 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 95 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
IMUL ESI, EDI 
ADD RBX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
