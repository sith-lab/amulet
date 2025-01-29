.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 125 # instrumentation
XCHG SI, AX 
CMOVNL RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 73 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], DX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], CX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], 62 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -38 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -31 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EDX 
AND RCX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RCX] 
DEC EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
