.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], 20 
SBB RAX, -313605637 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -67 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 30 
MOV AL, -93 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 75 # instrumentation
ADC AX, -14575 
ADC BX, -32 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 96 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RSI] 
CMP SIL, -79 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RDX] 
CMOVBE EDI, EBX 
SBB AX, AX 
CMP RAX, -1466053083 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
CMOVNBE EDX, EAX 
CMOVNL EDI, EDI 
IMUL RDI, RDI, 39 
ADC CX, AX 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -87 # instrumentation
ADC EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RSI] 
CMOVBE DI, DI 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
CMOVBE CX, SI 
CMP CX, -1 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 127 # instrumentation
ADC CL, SIL 
XCHG ESI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
