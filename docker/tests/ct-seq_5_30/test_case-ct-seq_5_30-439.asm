.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 35 # instrumentation
CMOVLE RDI, RSI 
CMOVNB ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
SUB AX, 18247 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -83 
CMP EDI, -2 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
OR AX, 0b1000000000000000 # instrumentation
BSF BX, AX 
ADD DIL, 78 # instrumentation
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMP RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -42 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RSI] 
SUB AL, -68 
MOV DL, CL 
DEC ESI 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDX] 
ADD SIL, 117 # instrumentation
SBB BL, -120 
STD  
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 72 # instrumentation
CMOVNL SI, SI 
CMP ECX, 73 
CMOVLE EAX, EDI 
CMP DIL, SIL 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RSI] 
IMUL DX, BX 
CMOVNO SI, DX 
AND RSI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RDI] 
SUB AX, SI 
SBB AX, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
