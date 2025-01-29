.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RAX] 
SAHF  
MOV RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RCX] 
OR DL, 63 
ADC RDX, -17 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], DI 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], DL 
OR AL, 8 
MOVZX EAX, DL 
ADC BL, SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
SETNP DIL 
ADD BL, DL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 24 
SETNO CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RCX] 
CMP RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -100 # instrumentation
CLD  
SBB EDI, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RSI] 
CMOVS BX, DI 
CMP ESI, -12 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 101 
LEA RCX, qword ptr [RBX + RDX + 36676] 
XOR AL, 64 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
SETO CL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RCX 
OR DL, 1 # instrumentation
CMPXCHG BL, DL 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], CL 
CDQ  
CMP BL, 118 
AND RCX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RCX] 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD DIL, 119 # instrumentation
SETNS DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
