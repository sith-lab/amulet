.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -123 # instrumentation
SBB SIL, -21 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
ADD RAX, -394865972 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], 106 
DEC RAX 
SUB SI, -63 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RSI] 
ADC AX, 14877 
AND RSI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RSI], -59 
SBB DIL, DL 
SBB AL, CL 
CMOVNP RDX, RBX 
NEG BX 
CMOVP RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], BL 
CMOVP BX, BX 
XCHG EBX, EDI 
AND RDI, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RDI] 
JP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], 109 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 1554095034 
ADC BX, CX 
SBB DL, DL 
CMOVO DX, AX 
XCHG SIL, AL 
AND RSI, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
ADD RBX, -111 
CMOVNP EDX, ESI 
SETS DL 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], 1503702466 
AND RCX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RCX] 
MOVSX ESI, DI 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -116 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 79 
XOR ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], DX 
JP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, -6 # instrumentation
CMOVNL DX, CX 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], 52 
AND RDX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
OR BL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
