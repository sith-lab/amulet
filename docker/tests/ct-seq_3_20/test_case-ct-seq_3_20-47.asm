.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], -12 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 84 
AND RDI, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RDI] 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -85 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], ESI 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
SUB RCX, -115 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], 0 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
ADC AX, -22479 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
