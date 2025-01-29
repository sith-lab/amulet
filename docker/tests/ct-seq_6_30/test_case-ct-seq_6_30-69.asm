.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDX] 
INC DL 
CMP RSI, -21 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RCX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
JBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MOV SI, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 78 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
IMUL RSI, RDI, 29 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
NEG DX 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
CMOVNO AX, SI 
CMOVL DI, DX 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RDI 
CMOVNBE BX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], BX 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
CMP RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
MUL EAX 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DL 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 111 
IMUL DIL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
