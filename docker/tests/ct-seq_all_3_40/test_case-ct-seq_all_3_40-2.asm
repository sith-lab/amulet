.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], CX 
ADD RBX, -75 
TEST DIL, -109 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], AL 
CMP EAX, -975336780 
ADD AX, 10938 
MOV RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
XOR AX, 13398 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
MOV CL, 38 
XOR CL, AL 
CMOVNL EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RBX], -61 
TEST BL, BL 
DEC AX 
SETNO SIL 
SETNZ AL 
XOR AX, -7897 
AND RSI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
SUB EDX, EDI 
SUB EAX, 675192911 
ADC AX, -23516 
AND DX, DX 
XOR AX, -29061 
NOT EBX 
ADC SIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RCX] 
CMP AL, -97 
NEG DX 
CMOVO EBX, EDI 
OR CL, CL 
AND RBX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDX] 
CDQ  
MOV AX, 30913 
MOVSX AX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
