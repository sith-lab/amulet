.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL EAX 
AND RDX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 6 
ADD DI, -25 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -65 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RBX 
SBB RDX, RBX 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
NEG CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
SUB DL, 20 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
MOVSX AX, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
