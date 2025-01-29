.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], AX 
SUB AL, 92 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], AL 
MUL RSI 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -110 
IMUL EAX, EBX, 25 
ADD RAX, 396732463 
NOP  
SETNS AL 
CMPXCHG SI, DI 
MOV EBX, -1251852931 
AND RBX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RBX] 
CMP AX, -2264 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], 76 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RSI 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -6 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -1045164565 
SUB ESI, 75 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RDI] 
SETO AL 
SBB DI, -52 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
NOT CX 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 10 
ADD RSI, RAX 
CMOVNO BX, CX 
SETP SIL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RCX] 
ADD SIL, 111 # instrumentation
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
DEC DL 
XADD EBX, ESI 
SETS CL 
OR DI, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDI] 
LEA CX, qword ptr [RDX + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RAX] 
CMOVNZ EDI, EDX 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 87 
MOV AX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
