.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
CMOVNS DI, CX 
ADC ESI, 62 
MOV DX, 12325 
IMUL BX, BX, 0 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
NEG DI 
IMUL EAX 
ADD DIL, 103 # instrumentation
CMOVLE ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RBX] 
CMOVO RDX, RBX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RBX] 
CMOVNL ESI, EAX 
IMUL RBX 
SBB AX, 31891 
CMOVNO RDX, RDX 
SUB AL, -18 
ADC DIL, -40 
MUL DL 
ADD DIL, 103 # instrumentation
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -106 # instrumentation
SBB EAX, -23 
NEG DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], SIL 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
JMP .bb_main.4 
.bb_main.4:
BSWAP RSI 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
