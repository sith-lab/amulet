.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], BL 
MOV ESI, 907812480 
CMOVZ AX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 94 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], -65 
CLD  
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RSI 
XOR EAX, -1120792212 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
XOR AL, -114 
IMUL DX, BX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RDX] 
MUL BL 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RAX] 
NOT EDX 
CMOVNZ CX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RAX] 
SAHF  
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RDI 
OR RAX, 2021284716 
CMOVNB RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -88 
SUB AX, DI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RSI] 
CMP AX, DX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR EAX, -382829068 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RSI 
SBB DI, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
CMOVNS CX, SI 
DEC RCX 
OR BL, 14 
OR RAX, -1952685127 
SBB RCX, 18 
MOV ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
CMOVNS DI, BX 
IMUL RDI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
