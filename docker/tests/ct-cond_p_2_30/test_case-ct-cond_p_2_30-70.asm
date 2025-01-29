.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 64 # instrumentation
CMOVNL CX, SI 
MOVZX EDI, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 2 
AND RCX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -109 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RBX] 
XCHG SI, DI 
AND RAX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RAX] 
CMOVNB SI, DX 
ADD RDX, 28 
SBB AX, BX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RDX] 
ADC SIL, 125 
IMUL BL 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
DEC BL 
MOVZX EDI, SI 
SUB EBX, ECX 
SBB DX, 63 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -1860077854 
IMUL DI 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EAX 
SBB DIL, DL 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -17 
AND RCX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
