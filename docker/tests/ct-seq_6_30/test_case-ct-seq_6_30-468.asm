.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 0 # instrumentation
CMOVO RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDI 
SBB AL, BL 
MOV CL, CL 
AND RBX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RBX] 
JZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RBX 
AND RSI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
SUB EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], CL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -99 # instrumentation
CMOVNL AX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RDI] 
CMOVNS EDX, EDI 
IMUL AX, AX, 67 
ADD DIL, 13 # instrumentation
CMOVNZ RCX, RDI 
CMOVLE DX, BX 
MOVSX EAX, CL 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RDI] 
XCHG EDI, EAX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
ADD DIL, -50 # instrumentation
CMOVO RSI, RBX 
CMOVNB RAX, RSI 
LOOPNE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, 118 # instrumentation
CMOVNLE BX, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -26 
AND RAX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -10 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 3 # instrumentation
ADC AX, 23240 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
