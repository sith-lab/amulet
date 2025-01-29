.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -63 # instrumentation
ADC RAX, -626403802 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RBX 
CMOVNL ECX, ESI 
ADD DL, DIL 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
MOVSX RDX, CL 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 6 # instrumentation
CMOVS AX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -114 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 89 
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CWD  
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
CMOVL ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RBX 
NEG DL 
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
DEC CL 
JNBE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RBX] 
SBB SI, DI 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RSI 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 19 # instrumentation
CMOVZ CX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], -116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
