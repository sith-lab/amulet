.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], RCX 
SBB AL, 110 
XADD RSI, RBX 
AND CL, BL 
XOR SIL, 46 
OR DX, AX 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], 7 
MOV RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], -43 
AND RDI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDI] 
SETS DL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX], -56 
ADC DI, 6 
XOR AX, 16168 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDI] 
SUB RAX, -1519545036 
MOVSX ESI, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND EDX, -34 
CMP AX, 1015 
IMUL AL 
CMP EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
TEST RCX, RDX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD SIL, 67 # instrumentation
CMOVLE SI, DI 
MUL ESI 
ADD SIL, 88 # instrumentation
CMOVNB EBX, ECX 
NOT DL 
SETNZ CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], BX 
XOR RDI, 58 
MUL AX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 36 
INC RCX 
SETP AL 
CMOVBE RDI, RAX 
OR DL, 1 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
