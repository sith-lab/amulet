.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -40 
AND RAX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RAX] 
SUB ESI, 24 
ADC BX, AX 
AND RDI, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 27 # instrumentation
ADC AL, CL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
CMOVZ EDI, ESI 
AND RAX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -47 # instrumentation
CMOVNZ RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 119 
ADC EAX, -1547108302 
CMOVNO RSI, RDX 
CMOVLE CX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
