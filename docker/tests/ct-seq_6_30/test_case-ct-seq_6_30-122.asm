.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RAX, RSI 
MOVSX BX, DL 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], CX 
AND RBX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RSI] 
CMOVZ EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDI 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDI] 
IMUL RDX 
OR DX, 0b1000000000000000 # instrumentation
BSR AX, DX 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
ADD SIL, 56 
NEG CL 
SBB EBX, EDX 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDX] 
DEC RBX 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDI] 
CMP RAX, 1057749759 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI], -29 
AND RDI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDI] 
IMUL RDX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
CWD  
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 111 # instrumentation
CMOVNZ EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RCX] 
MUL DL 
ADC BL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
