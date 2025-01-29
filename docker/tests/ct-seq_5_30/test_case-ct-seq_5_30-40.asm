.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RCX] 
CMOVO RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RAX] 
SBB BL, SIL 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
ADD RAX, -344891866 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], SI 
IMUL ECX, EAX, 65 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ECX 
ADD DIL, -83 # instrumentation
CMOVNL CX, BX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RDI 
CMOVNS RCX, RCX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
DEC EDI 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], AX 
CMOVNLE CX, SI 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EBX 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
JMP .bb_main.4 
.bb_main.4:
INC DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -55 
MOV BL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RAX] 
MOVSX ESI, BX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
