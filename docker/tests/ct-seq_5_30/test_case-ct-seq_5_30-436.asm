.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AL, -26 
AND RBX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], SIL 
JNB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, -48 # instrumentation
CMOVZ RDX, RDI 
ADC ESI, -67 
IMUL CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RSI 
AND RDI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDI], -18 
MOV AL, DIL 
CMOVB RCX, RCX 
JMP .bb_main.2 
.bb_main.2:
MUL RCX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RSI 
ADD SIL, -65 # instrumentation
CMOVP RDI, RDX 
CMOVO SI, SI 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
XCHG DL, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 434836524 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RSI 
CMOVZ RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
MOV BL, -1 
AND RDI, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RDI] 
SBB EDI, 72 
SBB BX, DX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RDI] 
ADD DIL, -9 # instrumentation
SBB BX, 117 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
