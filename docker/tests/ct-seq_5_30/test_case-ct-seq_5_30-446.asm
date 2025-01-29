.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 70 # instrumentation
ADC DIL, SIL 
CMOVNLE EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 3 
ADC RAX, -51 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
DEC RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 57 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RCX] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -57 # instrumentation
XCHG DIL, BL 
SBB AX, 5048 
SBB EAX, -394100817 
SBB AL, 104 
MOVSX EDI, BL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ESI 
ADD SIL, 43 # instrumentation
CMOVL CX, DX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -83 # instrumentation
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDX] 
MOV SIL, 61 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -101 
CMOVNO EBX, ESI 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DI 
AND RSI, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], CX 
ADD DX, 35 
CMOVNL RAX, RDI 
DEC BX 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 31 # instrumentation
SBB RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
