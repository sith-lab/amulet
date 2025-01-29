.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RDI] 
CMOVP DI, AX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RAX 
XCHG AL, AL 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RCX 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
NEG BX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
INC SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RSI] 
INC ESI 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 73 
IMUL BX 
CMP RSI, 25 
CMP AX, -31014 
ADC EDI, EBX 
CMOVNB DX, DI 
JNP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
ADD SIL, 6 # instrumentation
SBB RSI, -116 
IMUL CL 
ADC BL, SIL 
IMUL DX 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], SI 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
