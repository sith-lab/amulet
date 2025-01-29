.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -12 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RBX] 
IMUL EAX, ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], SIL 
AND RSI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RSI] 
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
IMUL BX, BX, 50 
CWD  
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ESI 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], 49 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
CMOVLE AX, CX 
JMP .bb_main.3 
.bb_main.3:
ADD AL, 59 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RBX] 
XCHG DI, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
SBB RSI, RSI 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 47 # instrumentation
CMC  
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
BSWAP RDI 
MOVSX EAX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
